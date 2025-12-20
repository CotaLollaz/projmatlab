function [x,y,Q,C] = lerOsDados(nome_f)

fid = fopen(nome_f); %abrir o ficheiro

if fid == -1
    disp('O ficheiro não foi aberto com sucesso');
else 
    cabecalho = fgetl(fid);
    data = textscan(fid, '(%f,%f),%f,%f'); % Lê os dados por colunasn
    x = data{1}; % primeira coluna
    y = data{2};
    Q = data{3}; % Segunda coluna
    C = data{4}; 
    len = length(x);
    for i = 1:len
        fprintf('\n(%g,%g) %g %g',x(i),y(i),Q(i),C(i));
    end 
end

fechar = fclose(fid); %fechar o ficheiro

if fechar == -1 %fechar é inválido
    disp('O ficheiro não foi fechado');
else 
    disp('O ficheiro foi fechado com sucesso');

end