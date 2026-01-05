clear
resposta=1;
while ~(resposta==0)
    resposta=menu('Opções','Carregar dados','Mostrar dados',...
        'Efetuar cálculos','Mostrar a localização','Gravar a localiazação','Sair do programa');
    switch resposta
        case 1 % o utilizador pode carregar noutro botões sem introduzir o nome do ficheiro, 
               % isso implica que o ficheiro não seja lido
            nome=pedirFicheiro;
            lerOsDados(nome);      %Carregar dados
        case 2
            % Mostrar dados
        case 3
            % Fazer o calculos
        case 4
            % Mostrar localização
        case 5
            %Gravar localização
        case 6
            return;
    end
end