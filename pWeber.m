clear;
resposta=1;
coords=[]; local=[];
while ~(resposta==0)
    resposta=menu('Opções','Carregar dados','Mostrar dados',...
        'Efetuar cálculos','Mostrar a localização','Gravar a localiazação','Sair do programa');
    switch resposta
        case 1 % o utilizador pode carregar noutro botões sem introduzir o nome do ficheiro, 
               % isso implica que o ficheiro não seja lido
            nome=pedirFicheiro();
            [coords,Q,C]=lerDados(nome);      %Carregar dados
        case 2
            % Mostrar dados
            if(~isempty(coords))
                mostrarDados(coords, Q, C);
            else
                fprintf(2, "\nPor favor, carregue um ficheiro de dados\n")
            end

        case 3
            % Fazer o calculos
            if(~isempty(coords))
                [local,d, CT]=cGrav(coords,Q,C);
                fprintf(1, "\nCalculos efetuados com sucesso\n");
            else
                fprintf(2, "\nSem dados! Carregue um ficheiro de dados\n");
            end
        case 4
            % Mostrar localização
            if(~isempty(local))
                escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d);
            else
                fprintf(2, "\nEfetue os calculos primeiro\n");
            end
        case 5
            if(~isempty(local))
                escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d, nome);
            else
                fprintf(2, "\nEfetue os calculos primeiro\n");
            end
            %Gravar localização
        case 6
            return;
    end
end