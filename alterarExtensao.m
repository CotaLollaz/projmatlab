function [f_final] =alterarExtensao(f_inicial) % Mudar a extenção
ficheiro_sem_extencao=FicheiroSemExtencao(f_inicial); % Tirar a extenção
f_final = strcat(ficheiro_sem_extencao,'.res'); % Meter uma nova extenção

end