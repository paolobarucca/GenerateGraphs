function [A, success] = greedy_configuration(degrees, trials)

success = 0;
for t = 1:trials
   [A, margin] = naive_configuration(degrees);
   
   if margin == 0
      success = 1;
      break 
   end
end