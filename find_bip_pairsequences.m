function [d1 , d2] = find_bip_pairsequences(c1, c2, alpha, nnodes1, nnodes2, trials)
count = 0;
check_var = 1;
while(check_var)
    count = count + 1;
    d1 = degree_seq(c1, alpha, nnodes1);
    d2 = degree_seq(c2, alpha, nnodes2);
    if sum(d1) == sum(d2)
        check_var = 0;
    end
    
    if count > trials
        check_var  = 0;
        'NOT FOUND'
    end
end