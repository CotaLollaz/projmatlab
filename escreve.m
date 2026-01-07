function [] = escreve(caso, local, CT, pontos, q, custos, distancias, varargin)
%Esta funcao escreve os dados (pontos, q, custos)
% e a solucao do problema de Weber (local, CT, distancias)
% para o caso fornecido
% O output e direcionado para um ficheiro de output,
% ou para stdout caso nao seja espcificado nos argumentos opcionais
% Argumentos opcionais: 1. Nome base para o ficheiro de output



if(nargin == 7) %Sem ficheiro de output especificcado
    fd = 1; %STDOUT
elseif(nargin == 8) %Tenta abrir ficheiro para escrita
    %Nome do ficheiro de output
    fOutput = strcat(caso, '_', num2str(length(pontos)), extensaoFicheiro(varargin{1}));

    fd = fopen(fOutput, "w");

    %Abertura sem sucesso
    if(fd == -1)
        fprintf(2, "Erro ao abrir ficheiro\n");
        return;
    end
end

%Outputs
mostrarLoc(caso, local, CT, fd);
fprintf(fd, "---\n");
mostrarDados(pontos, q, custos, distancias, fd);

%Fecho do ficheiro de output especificado
if(fd ~= 1)
    fclose(fd);
    fprintf('\nDados salvos com sucesso!\n');
end
end
