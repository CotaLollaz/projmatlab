function [] = mostrarDados(coords, Q, C, varargin)
% Esta funcao escreve os dados fornecidos antes do problema,
% ou escreve os mesmos dados mais as distancias calculdados
% do local da fabrica, consoante os argumentos opcionais
% O output e direcionado para o ficheiro com o file descriptor
% passado como margumento opcional
% Argumentos opcionais: 1. Vetor com distancias calculadas
% --------------------- 2. File desfriptor para output%


%Cabecalhos da tabela de dados
if(nargin >= 4) %Com distancias calculadas
    if(nargin == 4) %Sem fd
        fd = 1; %STDOUT
    else
        fd = varargin{2}; %fd passado como arg
    end

    d = varargin{1}; %Vetor das distancias calculadas

    fprintf(fd, '\nPontos de Interesse\n');
    fprintf(fd, '(xi, yi)\t|Qi\t| Ci\t| di\n');

elseif(nargin == 3) %Apenas com os dados do problema
    fd = 1; %STDOUT

    fprintf(fd, '\nPontos de Interesse\n');
    fprintf(fd, '(xi, yi)\t|Qi\t| Ci\n');
end

%Tabela de dados
for i = 1:length(coords)
    if(nargin >= 4) %Com distancias calculadas
        mostrarLinhaTabela(coords(i,:), Q(i), C(i), d(i), fd);
    elseif(nargin == 3)
        mostrarLinhaTabela(coords(i,:), Q(i), C(i));
    end
end
end