clear;

%Inicializacoes
resposta = 1;
coords = []; local = [];
ERRO = 2; %stderr

%Menu
while(~(resposta == 0))

    resposta = menu('Opções', 'Carregar dados', 'Mostrar dados',...
        'Efetuar cálculos', 'Mostrar a localização', ...
        'Gravar a localiazação', 'Sair do programa');

    switch(resposta)
        case 1 % Carregar ficheiro
            nome = pedirFicheiro(); %Pede ate obter nome valido (ficheiro existente)
            [coords, Q, C] = lerDados(nome);
        case 2 % Mostrar dados
            if(~isempty(coords)) %Dados validos carregados
                mostrarDados(coords, Q, C);
            else
                fprintf(ERRO, '\nPor favor, carregue um ficheiro de dados\n')
            end

        case 3 % Fazer o calculos

            if(~isempty(coords)) %Dados validos carregados
                [local, d, CT] = cGrav(coords, Q, C);
                fprintf('\nCalculos efetuados com sucesso\n');
            else
                fprintf(ERRO, '\nSem dados! Carregue um ficheiro de dados\n');
            end
        case 4  % Mostrar localização
            if(~isempty(local)) %Calculos ja efetuados
                escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d);
            else
                fprintf(ERRO, '\nEfetue os calculos primeiro\n');
            end
        case 5 %Gravar localização

            if(~isempty(local)) %Calculos ja efetuados
                escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d, nome);
            else
                fprintf(ERRO, '\nEfetue os calculos primeiro\n');
            end

        case 6
            return;
    end
end