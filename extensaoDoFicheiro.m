function extensao = extensaoDoFicheiro(Ficheiro) % Identificar a extenção do ficheiro
    posicao = strfind(Ficheiro,'.'); % Encontrar a posição dos pontos
    
    if isempty(posicao)
        extensao = '';
    else
        extensao = Ficheiro(posicao(end)+1:end); % Determina a extensão
    end
end
