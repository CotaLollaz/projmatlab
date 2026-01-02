function [] = mostrarLoc(caso, coord, CT, fd)
%mostrar_loc apresenta a localização calculada
% Esta função recebe as coordenadas calculadas como resolução do problema
% de Weber
    fprintf(fd, "\nLocalização e custo total para o caso %s\n", caso);
    fprintf(fd, 'Resolução do Problema de Weber\nCoordenadas: X = %.2f, Y = %.2f\n',coord(1),coord(2));
    fprintf(fd, "Custo Total: CT = %.2f\n", CT);
end