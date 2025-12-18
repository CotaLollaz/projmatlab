function [] = mostrar_dados(xi,yi,Qi,Ci,di)
%mostrar_dados apresenta os dados carregados
% Esta função recebe os dados de coordenadas dos pontos de interesse, as
% quantidades transportadas em cada ligação e o custo unitário para cada
% ligação

fprintf('(%.1f, %.1f)\t|%.1f\t| %.1f\t| %.3f\n',xi,yi,Qi,Ci,di)
end