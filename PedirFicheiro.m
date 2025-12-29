function ficheiro=PedirFicheiro()

confirmacao=0;

while confirmacao<=0
    ficheiro=input('Introduza o nome comleto do seu ficheiro: ', 's');
    confirmacao=fopen(ficheiro);
    if confirmacao==-1
        fprintf(2,'Ficheiro não encontrado. Tente novamente.\n');
    else
        fprintf('Ficheiro aberto com sucesso.')
    end
end