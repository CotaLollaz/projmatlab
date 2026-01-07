function extensao = extensaoFicheiro(ficheiro)
%Esta funcao devolve a extensao de um nome de ficheiro
%(ponto incluido no retorno)

posicaoPonto = strfind(ficheiro, '.');


if isempty(posicaoPonto) %Ficheiro sem extensao
    extensao = '';
else
    extensao = ficheiro(posicaoPonto(end):end);
end
end
