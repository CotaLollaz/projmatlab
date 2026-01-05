<<<<<<< HEAD
function [f_final] =alterarExtensao(f_inicial) 
% Esta função retira a extenção do ficheiro e subestitui pela extenção .res

=======
function [f_final] =alterarExtensao(f_inicial) % Mudar a extenção
>>>>>>> 59528e5619397d6cc3297bd32db9ac633e53dff0
ficheiro_sem_extencao=FicheiroSemExtencao(f_inicial); % Tirar a extenção
f_final = strcat(ficheiro_sem_extencao,'.res'); % Meter uma nova extenção

end