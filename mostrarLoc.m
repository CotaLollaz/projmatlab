function [] = mostrarLoc(caso, coord, CT, fd)
%Esta funcao escreve a solucao do problema de Wwber,
% as coordenadas e o custo total, do caso fornecido pelo
% ficheiro carregado pelo utilizador
% O output e direcionado para o ficheiro com o file descriptor fd

fprintf(fd, "\nLocalização e custo total para o caso %s\n", caso);
fprintf(fd, 'Resolução do Problema de Weber\nCoordenadas: X = %.2f, Y = %.2f\n',coord(1),coord(2));
fprintf(fd, "Custo Total: CT = %.2f\n", CT);
end