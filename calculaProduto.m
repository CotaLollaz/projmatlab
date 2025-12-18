function k=calculaProduto(qi,ci, varargin)
    %Esta funcao calcula o produto de 2 a 3 dos seus argumentos
    if(nargin==3)
        k=qi*ci*varargin{1};
    elseif (nargin==2)
        k=qi*ci;
    else
        k=NaN;
    end
end 