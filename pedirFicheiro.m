function ficheiro=pedirFicheiro()
%Esta função limita-se a Pedir ao utilizador um nome de um ficheiro
% e verificar se é aberto. Se não for então diz que não foi encontrado
% e volta a repetir

confirmacao=0;   % Iniciar a variavel utilizada para confirmar a abetura do 
confirmacao2=-1;  % ficheiro

while confirmacao<=0
    ficheiro=input(['Introduza o nome comleto do seu ficheiro de texto' ...
        ' simples: '], 's');
    confirmacao=fopen(ficheiro); %Toma um valor + se for aberto
    if confirmacao==-1
        fprintf(2,'Ficheiro não encontrado. Tente novamente.\n');
    else
        fprintf('Ficheiro aberto com sucesso.\n')
    end
end
while confirmacao2<0
    confirmacao2=fclose(confirmacao); % Fechar o ficheiro
    if confirmacao2==-1
        fprintf(2,'Não foi possivel ler o ficheiro. Tente novamente.\n');
    else
        fprintf('Ficheiro fechado com sucesso.')
    end
end
end
