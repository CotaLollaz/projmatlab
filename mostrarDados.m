function [] = mostrarDados(coords, Q, C, varargin)
    
    
    %Cabecalho dos dados com ou sem distancias ate fabrica
    if(nargin==4)
        fprintf('(xi, yi)\t|Qi\t| Ci\t| di\n');
    elseif(nargin==3)
        fprintf('(xi, yi)\t|Qi\t| Ci\n');
    end


    fprintf('Pontos de interesse\n');

    for i=1:length(coords)
        if(nargin>=4)
            if(nargin==4)
                fd=1;
            else
                fd=varargin{2};
            end
            mostrarLinhaTabela(coords(i,:), Q(i), C(i), varargin{1}(i), fd);
        elseif(nargin==3)
            mostrarLinhaTabela(coords(i,:), Q(i), C(i));
        end

    end

end