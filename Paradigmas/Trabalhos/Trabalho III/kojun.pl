% Importa a biblioteca CLP(FD) para restrições sobre inteiros
:- use_module(library(clpfd)).

% Define o tabuleiro do puzzle Kojun
tabuleiro([
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 1, 3, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 3, 0, 0],
    [0, 0, 3, 0, 0, 0, 0, 0],
    [0, 5, 0, 3, 0, 0, 0, 0],
    [0, 2, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 3, 0],
    [0, 0, 5, 3, 0, 0, 0, 0]
]).

% Define as regiões do puzzle Kojun
regioes([
    (1, (0, 0)), (1, (0, 1)), (1, (1, 0)), (1, (1, 1)), 
    (2, (0, 2)), (2, (0, 3)), (2, (1, 3)),		
    (3, (0, 4)),
    (4, (0, 5)), (4, (1, 5)), (4, (1, 6)),
    (5, (0, 6)), (5, (0, 7)), (5, (1, 7)),
    (6, (1, 2)), (6, (2, 0)), (6, (2, 1)), (6, (2, 2)),
    (7, (1, 4)), (7, (2, 4)), (7, (3, 4)),
    (8, (2, 3)), (8, (3, 3)), (8, (4, 1)), (8, (4, 2)), (8, (4, 3)), (8, (4, 4)),
    (9, (2, 5)), (9, (3, 5)), (9, (3, 6)), (9, (4, 5)), (9, (4, 6)),
    (10, (2, 6)), (10, (2, 7)), (10, (3, 7)), (10, (4, 7)), (10, (5, 7)),
    (11, (3, 0)), (11, (3, 1)), (11, (3, 2)),
    (12, (4, 0)), (12, (5, 0)),
    (13, (5, 1)), (13, (6, 0)), (13, (6, 1)), (13, (6, 2)), (13, (6, 3)),
    (14, (5, 2)), (14, (5, 3)), (14, (5, 4)),
    (15, (5, 5)), (15, (6, 5)), (15, (6, 6)), (15, (6, 7)), (15, (7, 5)),
    (16, (5, 6)),
    (17, (6, 4)), (17, (7, 1)), (17, (7, 2)), (17, (7, 3)), (17, (7, 4)),
    (18, (7, 0)),
    (19, (7, 6)), (19, (7, 7))
]).

% Função para imprimir o tabuleiro
imprime_tabuleiro([]).
imprime_tabuleiro([Linha|Resto]) :-
    writeln(Linha),
    imprime_tabuleiro(Resto).

% Função para encontrar uma célula vazia no tabuleiro
celula_vazia(Tabuleiro, (I, J)) :-
    nth0(I, Tabuleiro, Linha),
    nth0(J, Linha, 0).

% Função para encontrar a região de uma célula vazia
encontra_regiao((I, J), Regioes, Regiao, CelulasRegiao) :-
    member((Regiao, (I, J)), Regioes),
    findall((X, Y), member((Regiao, (X, Y)), Regioes), CelulasRegiao).

% Função para verificar se um número é válido em uma célula vazia
numero_valido(Tabuleiro, Regioes, (I, J), Num) :-
    encontra_regiao((I, J), Regioes, Regiao, CelulasRegiao),
    \+ (member((X, Y), CelulasRegiao), nth0(X, Tabuleiro, Linha), nth0(Y, Linha, Num)),
    length(CelulasRegiao, NumMax),
    Num =< NumMax,
    restricoes_adjacentes(Tabuleiro, (I, J), Num, Regiao, Regioes).

% Função para verificar as restrições adjacentes
restricoes_adjacentes(Tabuleiro, (I, J), Num, Regiao, Regioes) :-
    verifica_acima(Tabuleiro, Regioes, (I, J), Num, Regiao),
    verifica_abaixo(Tabuleiro, Regioes, (I, J), Num, Regiao),
    verifica_esquerda(Tabuleiro, (I, J), Num),
    verifica_direita(Tabuleiro, (I, J), Num).

% Verifica se o número acima é válido
verifica_acima(Tabuleiro, Regioes, (I, J), Num, Regiao) :-
    I1 is I - 1,
    (dentro_limites(Tabuleiro, I1, J) ->
        nth0(I1, Tabuleiro, Linha),
        nth0(J, Linha, NumAcima),
        (NumAcima == 0 -> true;
            (encontra_regiao((I1, J), Regioes, RegiaoAcima, _),
            (RegiaoAcima \= Regiao; NumAcima > Num),
            NumAcima \= Num))
    ; true).

% Verifica se o número abaixo é válido
verifica_abaixo(Tabuleiro, Regioes, (I, J), Num, Regiao) :-
    I1 is I + 1,
    (dentro_limites(Tabuleiro, I1, J) ->
        nth0(I1, Tabuleiro, Linha),
        nth0(J, Linha, NumAbaixo),
        (NumAbaixo == 0 -> true;
            (encontra_regiao((I1, J), Regioes, RegiaoAbaixo, _),
            (RegiaoAbaixo \= Regiao; NumAbaixo < Num),
            NumAbaixo \= Num))
    ; true).

% Verifica se o número à esquerda é válido
verifica_esquerda(Tabuleiro, (I, J), Num) :-
    J1 is J - 1,
    (dentro_limites(Tabuleiro, I, J1) ->
        nth0(I, Tabuleiro, Linha),
        nth0(J1, Linha, NumEsquerda),
        NumEsquerda \= Num
    ; true).

% Verifica se o número à direita é válido
verifica_direita(Tabuleiro, (I, J), Num) :-
    J1 is J + 1,
    (dentro_limites(Tabuleiro, I, J1) ->
        nth0(I, Tabuleiro, Linha),
        nth0(J1, Linha, NumDireita),
        NumDireita \= Num
    ; true).

% Função para verificar se os índices estão dentro dos limites do tabuleiro
dentro_limites(Tabuleiro, I, J) :-
    length(Tabuleiro, N),
    I >= 0, I < N,
    nth0(I, Tabuleiro, Linha),
    length(Linha, M),
    J >= 0, J < M.

% Função para resolver o tabuleiro
resolve(Tabuleiro, Regioes, TabuleiroFinal) :-
    ( celula_vazia(Tabuleiro, CelulaVazia) ->
        resolve_celula(Tabuleiro, Regioes, CelulaVazia, TabuleiroFinal)
    ; TabuleiroFinal = Tabuleiro
    ).

% Função para resolver uma célula vazia
resolve_celula(Tabuleiro, Regioes, (I, J), TabuleiroFinal) :-
    length(Tabuleiro, N),
    between(1, N, Num),
    numero_valido(Tabuleiro, Regioes, (I, J), Num),
    substitui(Tabuleiro, (I, J), Num, NovoTabuleiro),
    resolve(NovoTabuleiro, Regioes, TabuleiroFinal).

% Função auxiliar para substituir o valor em uma célula
substitui(Tabuleiro, (I, J), Val, NovoTabuleiro) :-
    nth0(I, Tabuleiro, Linha, RestoLinhas),
    nth0(J, Linha, _, RestoElementos),
    nth0(J, NovaLinha, Val, RestoElementos),
    nth0(I, NovoTabuleiro, NovaLinha, RestoLinhas).

% Função principal
principal :-
    tabuleiro(Tabuleiro),
    regioes(Regioes),
    flatten(Tabuleiro, TabuleiroAlinhado),
    TabuleiroAlinhado ins 0..8,
    ( resolve(Tabuleiro, Regioes, TabuleiroFinal)
    -> imprime_tabuleiro(TabuleiroFinal)
    ; writeln('Sem solução encontrada')
    ).

% Inicializa a execução do programa
:- initialization(principal).
