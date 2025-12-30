function nome = ficheiroSemExtencao(Ficheiro)% É preciso ser uma string para funcionar,
% Como é que meto para a variavle ficheiro para string?
    posicao=strfind(Ficheiro,'.'); % Ver a posição do ponto
    if isempty(posicao)
        nome=Ficheiro; % Ficheiro não tem extensão
    else
        nome=Ficheiro(1:posicao(end)-1); %devolve o ficheiro sem o que 
                                           % está para traz do '.'
    end
end