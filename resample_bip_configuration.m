function [A, success, degrees1, degrees2] = resample_bip_configuration(c1, c2, alpha, nnodes1, nnodes2, trials)

success = 0;

for t = 1:trials
    
   [degrees1 , degrees2] = find_bip_pairsequences(c1,c2, alpha, nnodes1, nnodes2, trials);
   [A, margin] = naive_bip_configuration(degrees1, degrees2);
   
   if margin == 0
      success = 1;
      break 
   end
end

