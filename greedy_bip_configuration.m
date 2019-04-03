function [A, success] = greedy_bip_configuration(degrees1, degrees2, trials)
%for success, degrees1 and degrees2 should satisfy the condition that sum(degrees1)==sum(degrees2)


success = 0;
for t = 1:trials
   [A, margin] = naive_bip_configuration(degrees1,degrees2);
   
   if margin == 0
      success = 1;
      break 
   end
end
