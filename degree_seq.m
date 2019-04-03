function d = degree_seq(c, alpha, nnodes)

d = zeros([nnodes 1]);

for i = 1:nnodes
   r = rand();
    if r< alpha
        d(i) = c;
    else 
        d(i) = poissrnd(c);
    end
end


