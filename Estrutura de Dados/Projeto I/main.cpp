#include <iostream>
#include <fstream>
#include <queue>
#include <stack>
#include <string>
#include <vector>
#include <stdexcept>

using namespace std;

// Estrutura para armazenar o resultado da verificação do XML
struct ResultadoVerificacao {
    queue<string> fila;
    bool certoErrado;
};

// Estrutura para armazenar informações do cenário
struct InformacoesCenario {
    string nomeCenario;
    int area;
    int altura;
    int largura;
    int x;
    int y;
};

// Função para limpar uma fila
queue<string> clear(queue<string> fila) {
    while (!fila.empty()) {
        fila.pop();
    }
    return fila;
}

// Função para verificar a validade de um arquivo XML
ResultadoVerificacao VerificarXML(const string& xmlFilename) {
    ResultadoVerificacao resultado;
    string linha;
    queue<string> fila;
    stack<string> pilhaVer;

    /*ifstream arquivo(xmlFilename);
    if (!arquivo.is_open()) {
        resultado.certoErrado = false;
        return resultado;
    }*/

    char xmlfilename[100];
    cin >> xmlfilename;
    ifstream arquivo(xmlfilename, ios::in);

    while (getline(arquivo, linha)) {
        fila.push(linha);

        size_t i = 0;
        while (i < linha.length()) {
            if (linha[i] == '<') {
                size_t j = i + 1;
                while (j < linha.length() && linha[j] != '>') {
                    j++;
                }

                if (j < linha.length() && linha[j] == '>') {
                    string tag = linha.substr(i + 1, j - i - 1);

                    if (tag[0] != '/') {
                        // Encontrou uma tag de abertura, empilha seu nome
                        pilhaVer.push(tag);
                    } else {
                        // Encontrou uma tag de fechamento, verifica se fecha a tag correspondente
                        string tagFechamento = tag.substr(1); // Remova a barra
                        if (!pilhaVer.empty() && pilhaVer.top() == tagFechamento) {
                            pilhaVer.pop();
                        } else {
                            resultado.certoErrado = false;
                            resultado.fila = fila;
                            return resultado;
                        }
                    }
                }

                i = j;
            }
            i++;
        }
    }

    arquivo.close();

    if (!pilhaVer.empty()) {
        resultado.certoErrado = false;
        resultado.fila = fila;
    } else {
        resultado.certoErrado = true;
        resultado.fila = fila;
    }

    return resultado;
}

// Função para converter string em int com tratamento de exceções
int convertStringToInt(const string& str) {
    try {
        return stoi(str);
    } catch (const invalid_argument& e) {
        cerr << "Erro na conversão de string para int: " << e.what() << endl;
        return 0; // Valor padrão ou outro valor apropriado.
    }
}

// Função para identificar a altura, largura, coordenada x, coordenada y e nome de um cenário
void IdentificarAtributosCenario(queue<string>& fila, int& altura, int& largura, int& x, int& y, string& nomeCenario) {
    string linha;
    size_t pos;

    // Percorre as linhas na fila para identificar os atributos do cenário
    while (!fila.empty()) {
        linha = fila.front();
        fila.pop();

        if (linha.find("altura") != string::npos) {
            pos = linha.find(">") + 1;
            altura = convertStringToInt(linha.substr(pos, linha.find("<", pos) - pos));
        } else if (linha.find("largura") != string::npos) {
            pos = linha.find(">") + 1;
            largura = convertStringToInt(linha.substr(pos, linha.find("<", pos) - pos));
        } else if (linha.find("x") != string::npos) {
            pos = linha.find(">") + 1;
            x = convertStringToInt(linha.substr(pos, linha.find("<", pos) - pos));
        } else if (linha.find("y") != string::npos) {
            pos = linha.find(">") + 1;
            y = convertStringToInt(linha.substr(pos, linha.find("<", pos) - pos));
        } else if (linha.find("<nome>") != string::npos) {
            // Encontrou uma tag de nome do cenário
            pos = linha.find(">") + 1;
            nomeCenario = linha.substr(pos, linha.find("<", pos) - pos);
        } else if (linha == "</cenario>") {
            // Fim do bloco do cenário
            break;
        }
    }
}

// Função para criar uma matriz com zeros
vector<vector<char>> CriarMatriz(int altura, int largura) {
    return vector<vector<char>>(altura, vector<char>(largura, '0'));
}

// Função para calcular a área da matriz
int CalcularAreaMatriz(const vector<vector<char>>& matriz) {
    int area = 0;
    for (const auto& linha : matriz) {
        for (char c : linha) {
            if (c == '1') {
                area++;
            }
        }
    }
    return area;
}

// Função para calcular a área do cenário
int CalcularAreaCenario(vector<vector<char>>& matriz, int x, int y) {
    if (matriz[x][y] != '0') {
        int altura = matriz.size();
        int largura = matriz[0].size();
        queue<pair<int, int>> coordenadas;
        coordenadas.push({x, y});

        while (!coordenadas.empty()) {
            int i = coordenadas.front().first;
            int j = coordenadas.front().second;
            coordenadas.pop();

            if (i >= 0 && i < altura && j >= 0 && j < largura && matriz[i][j] == '1') {
                matriz[i][j] = '2';
                coordenadas.push({i + 1, j});
                coordenadas.push({i - 1, j});
                coordenadas.push({i, j + 1});
                coordenadas.push({i, j - 1});
            }
        }
    }

    return CalcularAreaMatriz(matriz);
}

// Função para processar um cenário
InformacoesCenario ProcessarCenario(queue<string>& fila) {
    InformacoesCenario informacoes;
    informacoes.nomeCenario = "SemNome"; // Valor padrão se o nome não for encontrado
    IdentificarAtributosCenario(fila, informacoes.altura, informacoes.largura, informacoes.x, informacoes.y, informacoes.nomeCenario);

    vector<vector<char>> matriz = CriarMatriz(informacoes.altura, informacoes.largura);

    // Pule a linha de coordenadas
    fila.pop();

    for (auto& linha : matriz) {
        string linhaMatriz = fila.front();
        for (size_t j = 0; j < informacoes.largura; j++) {
            linha[j] = linhaMatriz[j];
        }
        fila.pop();
    }

    informacoes.area = CalcularAreaCenario(matriz, informacoes.x, informacoes.y);
    return informacoes;
}

int main() {
    string xmlFilename;
    cin >> xmlFilename;

    ResultadoVerificacao resultado = VerificarXML(xmlFilename);

    if (!resultado.certoErrado) {
        cout << "erro" << endl;
        return 1;
    }

    queue<string> fila = resultado.fila;

    while (!fila.empty()) {
        if (fila.front() == "<cenario>") {
            InformacoesCenario informacoes = ProcessarCenario(fila);
            cout << informacoes.nomeCenario << " " << informacoes.area << endl;
        } else {
            fila.pop();
        }
    }

    return 0;
} 
