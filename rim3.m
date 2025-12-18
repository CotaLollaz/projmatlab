function [leitura_f] = rim3(output)

output = fopen('filename');
dados = textscan(fid,'%f,%f,%f,%f');
fclose(output);


end



