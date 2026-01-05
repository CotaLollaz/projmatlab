function [coords,Q,C] = lerDados(nome_f)

fid = fopen(nome_f); %abrir o ficheiro

if fid == -1
    disp('O ficheiro não foi aberto com sucesso\n');
else 
    cabecalho = fgetl(fid);
    data = textscan(fid, '(%f,%f),%f,%f'); % Lê os dados por colunasn
    x = data{1}; % primeira coluna
    y = data{2};
    Q = data{3}; % Segunda coluna
    C = data{4}; 
    
    len = length(x);

    coords=zeros(len, 2);
    for i = 1:len
        aux=[x(i), y(i)];
        coords(i,:)=aux;
    end 
end

fechar = fclose(fid); %fechar o ficheiro

if fechar == -1 %fechar é inválido
    fprintf('O ficheiro não foi fechado.\n');
else 
    fprintf('O ficheiro foi fechado com sucesso.\n');

end