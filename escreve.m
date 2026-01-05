function [] = escreve(caso, local, CT, pontos, q, custos, distancias, varargin)
    if(nargin==7)
        fd=1; %STDOUT
    elseif(nargin==8) %Tenta abrir ficheiro para escrita
        
        fOutput=strcat(caso, '_', num2str(length(pontos)), extensaoFicheiro(varargin{1}));
        fd=fopen(fOutput, "w");

        if(fd==-1)
            fprintf(2, "Erro ao abrir ficheiro\n");
            return;
        end       
    end

    mostrarLoc(caso, local, CT, fd);
    fprintf(fd, "---\n");
    mostrarDados(pontos, q, custos, distancias, fd);

    if(fd~=1)
        fclose(fd);
        fprintf('\nDados salvos com sucesso!\n');
    end

        
end
