function [local, d, CT]= cGrav(coords, Q, C)
    %Esta funcao resolve o problema de Weber utilizando a heuristica do centro de gravidade
    %dadas as coordenadas dos pontos relevantes, os custos e as quantidades associadas
    %a esses pontos


    %inicialzacao e prealocacao resultados
    d=zeros(1,length(coords));
    CT=0;
    local=[];

    %inicializacao vars centro gravidade
    X=0;
    Y=0;
    div=0;

    %Calculo auxiliar numerador e denominador para o centro de gravidade
    for i=1:length(coords)
        X=X+calculaProduto(Q(i), C(i),coords(i, 1));
        Y=Y+calculaProduto(Q(i), C(i),coords(i, 2));
        div=div+calculaProduto(Q(i), C(i));
    end

    %Calculo centro gravidade
    X=X/div;
    Y=Y/div;
    local=[X Y];

    %Calculo distancias e custo total
    for i=1:length(coords)
        d(i) =calculaDistancia(coords(i,:), local);
        CT=CT+calculaProduto(Q(i), C(i), d(i));
    end
       
end

