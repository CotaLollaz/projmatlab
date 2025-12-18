function [] = mostrar_loc(coord)
%mostrar_loc apresenta a localização calculada
% Esta função recebe as coordenadas calculadas como resolução do problema
% de Weber

fprintf(['Resolução do Problema de Weber\n Coordenadas: X = %d, ' ...
    'Y = %d\n'],coord(1),coord(2))
end