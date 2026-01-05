function [] = mostrarDados(coords, Q, C, varargin)
    
    
    %Cabecalho dos dados com ou sem distancias ate fabrica e file descriptor
    if(nargin>=4)
        if(nargin==4)
            fd=1;
        else
            fd=varargin{2};
        end
        fprintf(fd, '\nPontos de Interesse\n');
        fprintf(fd, '(xi, yi)\t|Qi\t| Ci\t| di\n');

    elseif(nargin==3)
        fd=1;
        fprintf(fd, '\nPontos de Interesse\n');
        fprintf(fd, '(xi, yi)\t|Qi\t| Ci\n');

    end
    
    
    for i=1:length(coords)
        if(nargin>=4)
            mostrarLinhaTabela(coords(i,:), Q(i), C(i), varargin{1}(i), fd);
        elseif(nargin==3)
            mostrarLinhaTabela(coords(i,:), Q(i), C(i));
        end

    end

end