function extensao = extensaoFicheiro(Ficheiro) % Identificar a extenção do ficheiro
    posicao = strfind(Ficheiro,'.'); % Encontrar a posição dos pontos
    
    if isempty(posicao)
        extensao = '';
    else
        extensao = Ficheiro(posicao(end):end); % Determina a extensão
    end
end
