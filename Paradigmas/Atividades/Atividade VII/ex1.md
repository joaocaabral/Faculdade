A) No haskell, as classes primitivas e secundárias referem-se aos tipos de
classes que são usados para criar instâncias de tipos e fornecer implementações.

    *Exemplos*
    - Classes primitivas:
        Eq(Equalidade): Esta classe permite testar igualdade entre valores. Por exemplo, '==' e '/=' são métodos definidos nesta classe.
            Ex: '5 == 5' retorna True.

        Ord(Ordem): Esta classe permite comparar valores para determinar a ordem. Métodos como '<', '>', '<=', '>=', 'compare' são definidos aqui.
            Ex: '3 <= 5' retorna True.

        Show(Mostrar): Esta classe permite converter valores para strinfs. O método 'show' é definido aqui.
            Ex: 'show 5' retorna "5".

    - Classes secundárias:
        Num (Números): Esta classe é usada para representar tipos numéricos. Inclui inteiros, números reais e outros tipos numéricos. Métodos como '+', '-', '*', 'abs', 'signum' são definidos aqui.

        Integral (Integrais): Esta classe é usada para representar tipos numéricos integrais. Inclui apenas inteiros. Métodos como 'div', 'mod', 'quot', 'rem', 'toInteger' são definidos aqui.

        Fractional (Fracionários): Esta classe é usada para representar tipos numéricos fracionários. Inclui números reais e de ponto flutuante. Métodos como '/', 'recip', 'fromRational' são definidos aqui.

B) As classes numéricas no Haskell estão relacionadas hierarquicamente, com Num sendo a classe principal e as outras classes especializadas derivando dela. Por exemplo, Integral e Fractional são subclasses de Num. Isso significa que qualquer tipo que seja uma instância de Integral também é uma instância de Num, e o mesmo vale para Fractional.

Em termos de métodos, cada classe numérica fornece métodos específicos para operações numéricas relevantes. Por exemplo, a classe Num fornece métodos básicos como +, -, *, enquanto a classe Fractional adiciona métodos como /, e a classe Integral adiciona métodos como div e mod para lidar com operações inteiras. Essa estrutura hierárquica permite um alto nível de abstração e reutilização de código ao lidar com tipos numéricos em Haskell.