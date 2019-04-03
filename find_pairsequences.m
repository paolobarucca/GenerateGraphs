function [d1 , d2] = find_pairsequences(c, alpha, nnodes, trials)
count = 0;
check_var = 1;
while(check_var)
    count = count + 1;
    d1 = degree_seq(c, alpha, nnodes);
    d2 = degree_seq(c, alpha, nnodes);
    if sum(d1) == sum(d2)
        check_var = 0;
    end
    
    if count > trials
        check_var  = 0;
        'NOT FOUND'
    end
end