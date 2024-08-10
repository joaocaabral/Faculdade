% Definição dos predicados para gravatas, cargos, estados, acusações, fortunas e paraísos fiscais.
gravata(branca).
gravata(amarela).
gravata(verde).
gravata(azul).
gravata(vermelha).

cargo(deputado).
cargo(ministro).
cargo(vereador).
cargo(prefeito).
cargo(governador).

estado(saopaulo).
estado(maranhao).
estado(parana).
estado(goias).
estado(para).

acusacao(superfaturamento).
acusacao(extorsao).
acusacao(desvio).
acusacao(propina).
acusacao(nepotismo).

fortuna(30).
fortuna(35).
fortuna(40).
fortuna(45).
fortuna(50).

paraiso(suica).
paraiso(tonga).
paraiso(cayman).
paraiso(chipre).
paraiso(uruguai).

% Predicados auxiliares para manipulação de listas

% X está ao lado de Y
aoLado(X, Y, Lista) :- nextto(X, Y, Lista); nextto(Y, X, Lista).

% X está exatamente à esquerda de Y
exatEsquerda(X, Y, Lista) :- nth0(IndexX,Lista,X), nth0(IndexY,Lista,Y), IndexX+1 =:= IndexY.

% X está exatamente à direita de Y
exatDireita(X, Y, Lista) :- exatEsquerda(Y,X,Lista).

% X está à esquerda de Y (em qualquer posição à esquerda)
aEsquerda(X, Y, Lista) :- nth0(IndexX, Lista, X), nth0(IndexY, Lista, Y), IndexX < IndexY.

% X está à direita de Y (em qualquer posição à direita)
aDireita(X, Y, Lista) :- aEsquerda(Y,X,Lista).

% X está no canto se ele é o primeiro ou o último da lista
noCanto(X, Lista) :- last(Lista, X).
noCanto(X, [X|_]).

% X está entre Y e Z na lista (em qualquer posição entre os dois)
entre(X, Y, Z, Lista) :- aDireita(X, Y, Lista), aEsquerda(X, Z, Lista).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H, T)), todosDiferentes(T).

% Predicado solução para resolver o problema dos políticos
solucao(ListaSolucao) :-
    ListaSolucao = [
        politico(Gravata1, Cargo1, Estado1, Acusacao1, Fortuna1, Paraiso1),
        politico(Gravata2, Cargo2, Estado2, Acusacao2, Fortuna2, Paraiso2),
        politico(Gravata3, Cargo3, Estado3, Acusacao3, Fortuna3, Paraiso3),
        politico(Gravata4, Cargo4, Estado4, Acusacao4, Fortuna4, Paraiso4),
        politico(Gravata5, Cargo5, Estado5, Acusacao5, Fortuna5, Paraiso5)
    ],

    % Na quarta posição está o político que tem conta no Chipre.
    Paraiso4 = chipre,

    % O dono da conta nas Ilhas Cayman está na terceira posição.
    Paraiso3 = cayman,

    % O político acusado de Propina está na quarta posição.
    Acusacao4 = propina,

    % Na quinta posição está o político acusado de Nepotismo.
    Acusacao5 = nepotismo,

    % Na terceira posição está o político do PR.
    Estado3 = parana,

    % O Ministro possui uma conta em Tonga.
    member(politico(_, ministro, _, _, _, tonga), ListaSolucao),

    % O político de gravata Azul está exatamente à direita do de gravata Verde.
    exatDireita(politico(azul, _, _, _, _, _), politico(verde, _, _, _, _, _), ListaSolucao),

    % Quem está de gravata Verde está em algum lugar à esquerda do de gravata Vermelha.
    aEsquerda(politico(verde, _, _, _, _, _), politico(vermelha, _, _, _, _, _), ListaSolucao),

    % O político de Goiás é o mais rico.
    member(politico(_, _, goias, _, 50, _), ListaSolucao),

    % O político acusado de nepotismo está em uma das pontas.
    noCanto(politico(_, _, _, nepotismo, _, _), ListaSolucao),

    % O político acusado de extorsão está entre o deputado e o político acusado de desvio.
    entre(politico(_, _, _, extorsao, _, _), politico(_, deputado, _, _, _, _), politico(_, _, _, desvio, _, _), ListaSolucao),

    % Quem tem fortuna de $45 M está entre o deputado e quem tem $30 M.
    entre(politico(_, _, _, _, 45, _), politico(_, deputado, _, _, _, _), politico(_, _, _, _, 30, _), ListaSolucao),

    % O político de Goiás está entre quem tem conta na Suíça e o político menos rico.
    entre(politico(_, _, goias, _, _, _), politico(_, _, _, _, _, suica), politico(_, _, _, _, 30, _), ListaSolucao),

    % O político do Maranhão está entre o de São Paulo e o de gravata Azul.
    entre(politico(_, _, maranhao, _, _, _), politico(_, _, saopaulo, _, _, _), politico(azul, _, _, _, _, _), ListaSolucao),

    % O Prefeito está entre o acusado de superfaturamento e o Governador.
    entre(politico(_, prefeito, _, _, _, _), politico(_, _, _, superfaturamento, _, _), politico(_, governador, _, _, _, _), ListaSolucao),

    % O Vereador está entre o político de São Paulo e o Prefeito.
    entre(politico(_, vereador, _, _, _, _), politico(_, _, saopaulo, _, _, _), politico(_, prefeito, _, _, _, _), ListaSolucao),

    % O político de gravata Verde tem conta na América Central.
    member(politico(verde, _, _, _, _, cayman), ListaSolucao),

    % O político com conta no Caribe está em algum lugar entre o de gravata Branca e o que possui conta no Chipre, nessa ordem.
    entre(politico(_, _, _, _, _, cayman), politico(branca, _, _, _, _, _), politico(_, _, _, _, _, chipre), ListaSolucao),

    % O político de gravata Branca está exatamente à esquerda do que tem conta no paraíso fiscal da Oceania.
    exatEsquerda(politico(branca, _, _, _, _, _), politico(_, _, _, _, _, tonga), ListaSolucao),

    % O dono da conta no Chipre está ao lado do dono da conta no Uruguai.
    aoLado(politico(_, _, _, _, _, chipre), politico(_, _, _, _, _, uruguai), ListaSolucao),

    % Quem tem US$ 40 M está exatamente à direita do político que tem conta na Suíça.
    exatDireita(politico(_, _, _, _, 40, _), politico(_, _, _, _, _, suica), ListaSolucao),

    % Testa todas as possibilidades...
    gravata(Gravata1), gravata(Gravata2), gravata(Gravata3), gravata(Gravata4), gravata(Gravata5),
    todosDiferentes([Gravata1, Gravata2, Gravata3, Gravata4, Gravata5]),

    cargo(Cargo1), cargo(Cargo2), cargo(Cargo3), cargo(Cargo4), cargo(Cargo5),
    todosDiferentes([Cargo1, Cargo2, Cargo3, Cargo4, Cargo5]),

    estado(Estado1), estado(Estado2), estado(Estado3), estado(Estado4), estado(Estado5),
    todosDiferentes([Estado1, Estado2, Estado3, Estado4, Estado5]),

    acusacao(Acusacao1), acusacao(Acusacao2), acusacao(Acusacao3), acusacao(Acusacao4), acusacao(Acusacao5),
    todosDiferentes([Acusacao1, Acusacao2, Acusacao3, Acusacao4, Acusacao5]),

    fortuna(Fortuna1), fortuna(Fortuna2), fortuna(Fortuna3), fortuna(Fortuna4), fortuna(Fortuna5),
    todosDiferentes([Fortuna1, Fortuna2, Fortuna3, Fortuna4, Fortuna5]),

    paraiso(Paraiso1), paraiso(Paraiso2), paraiso(Paraiso3), paraiso(Paraiso4), paraiso(Paraiso5),
    todosDiferentes([Paraiso1, Paraiso2, Paraiso3, Paraiso4, Paraiso5]).