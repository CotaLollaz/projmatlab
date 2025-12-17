clear

resposta=menu('Opções','Carregar dados','Mostrar dados',...
    'Efetuar cálculos','Mostrar a localização','Sair do programa');
if resposta==0
    while resposta==0
        fprintf(2,'Erro. Por favor introduza uma opção.\n')
        resposta=menu('Opções','Carregar dados','Mostrar dados',...
            'Efetuar cálculos','Mostrar a localização','Sair do programa');
    end
else
    while ~(resposta==0)
        resposta=menu('Opções','Carregar dados','Mostrar dados',...
            'Efetuar cálculos','Mostrar a localização','Sair do programa');
        switch resposta
            case 1
                % Carregar dados
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
end