function [] = mostrarLinhaTabela(coords, q, c, varargin)
%mostrar_dados apresenta os dados carregados
% Esta função recebe os dados de coordenadas dos pontos de interesse, as
% quantidades transportadas em cada ligação e o custo unitário para cada
% ligação
% Argumentos opcionais: 1. distancia ate fabrica, 2. file descriptor para escrita

%Com distancia, com ou sem file descriptor
if(nargin >= 4)
    d = varargin{1}; %distancia
    if(nargin == 4)
        fd = 1; %STDOUT
    else
        fd = varargin{2}; %outro ficheiro
    end

    fprintf(fd, '(%.1f, %.1f)\t|%.1f\t| %.1f\t| %.3f\n', ...
        coords(1), coords(2) , q, c, d);        
elseif(nargin == 3) %Sem distancia nem file descriptor
    fprintf('(%.1f, %.1f)\t|%.1f\t| %.1f\n', coords(1), coords(2) , q, c);
end
end