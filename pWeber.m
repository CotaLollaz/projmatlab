clear
resposta=1;
while ~(resposta==0)
    resposta=menu('Opções','Carregar dados','Mostrar dados',...
        'Efetuar cálculos','Mostrar a localização','Gravar a localiazação','Sair do programa');
    switch resposta
        case 1 % o utilizador pode carregar noutro botões sem introduzir o nome do ficheiro, 
               % isso implica que o ficheiro não seja lido
<<<<<<< HEAD
            nome=pedirFicheiro;
            lerOsDados(nome);      %Carregar dados
=======
            nome=pedirFicheiro();
            [coords,Q,C]=lerDados(nome);      %Carregar dados
>>>>>>> 59528e5619397d6cc3297bd32db9ac633e53dff0
        case 2
            % Mostrar dados
            mostrarDados(coords, Q, C);
        case 3
            % Fazer o calculos
            [local,d, CT]=cGrav(coords,Q,C);
        case 4
            % Mostrar localização
            escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d);
        case 5
<<<<<<< HEAD
=======
            escreve(ficheiroSemExtencao(nome), local, CT, coords, Q, C, d, nome);
>>>>>>> 59528e5619397d6cc3297bd32db9ac633e53dff0
            %Gravar localização
        case 6
            return;
    end
end