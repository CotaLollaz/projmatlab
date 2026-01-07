function nome = ficheiroSemExtencao(ficheiro)
%Esta funcao devolve o nome de um ficheiro sem a sua extensao
% (ponto nao incluido no retorno)%

posicaoPonto=strfind(ficheiro, '.');

if (isempty(posicaoPonto)) %Ficheiro nao tem extensao
    nome=ficheiro;
else
    nome=ficheiro(1:posicaoPonto(end)-1);
end
end