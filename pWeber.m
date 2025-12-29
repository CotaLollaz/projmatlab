clear
resposta=1;
while ~(resposta==0)
    resposta=menu('Opções','Carregar dados','Mostrar dados',...
        'Efetuar cálculos','Mostrar a localização','Sair do programa');
    switch resposta
        case 1
            PedirFicheiro();
            %Carregar dados
        case 2
            % Mostrar dados
        case 3
            % Fazer o calculos
        case 4
            % Mostrar localização
        case 5
            return;
    end
end