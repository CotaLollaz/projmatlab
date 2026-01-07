function ficheiro = pedirFicheiro()
%Esta função limita-se a Pedir ao utilizador um nome de um ficheiro
% e verificar se é aberto. Se não for então diz que não foi encontrado
% e volta a repetir

% Iniciar a variavel utilizada para confirmar a abetura do ficheiro
fd = 0;   

while(fd <= 0)
    ficheiro = input(['Introduza o nome completo do seu ficheiro de texto' ...
                    ' simples: '], 's');

    fd = fopen(ficheiro);

    if(fd == -1)
        fprintf(2,'Ficheiro não encontrado. Tente novamente.\n');
    else
        fprintf('\nFicheiro aberto com sucesso.\n');
    end
end

fclose(fd);
end
