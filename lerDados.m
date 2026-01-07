function [coords,Q,C] = lerDados(nome_f)
%Esta funcao recebe um nome de um ficheiro, processa-o,
% e devolve um vetor com coordenadas(coords), um vetor com quantidades(Q)
% outro com  custos (C)
% Serao retornados vetores vazios caso se trate de um ficheiro invalido%

fid = fopen(nome_f); %abrir o ficheiro

if(fid == -1)
    fprintf(2, 'O ficheiro não foi aberto com sucesso\n');
else 
    cabecalho = fgetl(fid);
    if(~isequal(cabecalho, '(xi, yi), Qi, Ci'))
        fprintf(1, ['\nCabecalho incorreto ou ausente.'...
        ,'\nPoderá haver perda de dados.'])
    end


    data = textscan(fid, '(%f,%f),%f,%f', ...
                    'MultipleDelimsAsOne', true,'ReturnOnError', true); 

    %Ficheiro com erros (leitura abortada antes do fim)
    if(~feof(fid))

        fprintf(2, ['\nFicheiro inválido. Dados não carregados\n'...
                    'Corrija o ficheiro ou tente outro\n']);

        %Retorno em caso de erro
        coords = [];
        Q = [];
        C = [];
        return;
    end

   
    %Parsing ocorreu sem erros de formato
    x = data{1}; 
    y = data{2};
    Q = data{3}; 
    C = data{4}; 
    
    len = length(x);

    %Verificar Valores Anomalos
    aux = [x ,y, Q, C];
    
    %Existencia de valores anomalos
    if(~(isequal(isinf(aux), zeros(len,4))...
        && isequal(isnan(aux), zeros(len,4))))

        fprintf(2, ['\nFicheiro inválido. Dados não carregados\n'...
                    'Corrija o ficheiro ou tente outro\n']);
        
        coords = [];
        Q = [];
        C = [];
        return;
    end

    %Agrupar as coordenadas por vetores
    coords = zeros(len, 2);
    for i = 1:len
        aux = [x(i), y(i)];
        coords(i,:) = aux;
    end 
end

fclose(fid);
end