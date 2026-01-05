clear
resposta=1;
respostaSec=1;
while ~(resposta==0)
    resposta=menu('pWeber','Carregar dados','Sair do programa');
    switch resposta
        case 1 % o utilizador pode carregar noutro botões sem introduzir o nome do ficheiro, 
               % isso implica que o ficheiro não seja lido
            nome=pedirFicheiro();
            [coords,Q,C]=lerDados(nome);      %Carregar dados
                while ~(respostaSec==0)
                    respostaSec=menu('Opções','Mostrar dados',...
    'Efetuar cálculos','Mostrar a localização','Gravar a localiazação', ...
    'Sair do programa');
                    switch respostaSec
                        case 1
                            % Mostrar dados
                            mostrarDados(coords, Q, C);
                        case 2
                            % Fazer o calculos
                            [local,d, CT]=cGrav(coords,Q,C);
                        case 3
                            % Mostrar localização
                            escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d);
                        case 4
                            escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d, nome);
                            %Gravar localização
                        case 5
                            return;
                    end
                end
    
        case 2
            return;
    end
end
            
