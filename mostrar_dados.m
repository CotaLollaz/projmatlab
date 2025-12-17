function [] = mostrar_dados(Xi,Yi,Qi,Ci)
%mostrar_dados apresenta os dados carregados
% Esta função recebe os dados de coordenadas dos pontos de interesse, as
% quantidades transportadas em cada ligação e o custo unitário para cada
% ligação

fprintf(['As coordenadas do ponto de interesse são: (%d,%d)\n' ...
    'As quantidades a transportar em cada ligação são: %d\n' ...
    'O custo unitário é: %d\n'],Xi,Yi,Qi,Ci)
end