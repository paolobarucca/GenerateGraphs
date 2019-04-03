function [A, success] = greedy_bip_configuration(degrees1, degrees2, trials)

success = 0;
for t = 1:trials
   [A, margin] = naive_bip_configuration(degrees1,degrees2);
   
   if margin == 0
      success = 1;
      break 
   end
end