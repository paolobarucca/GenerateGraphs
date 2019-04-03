function [A, success, degrees] = resample_configuration(c, alpha, nnodes, trials)

success = 0;
for t = 1:trials
    degrees = degree_seq(c, alpha, nnodes);
   [A, margin] = naive_configuration(degrees);
   
   if margin == 0
      success = 1;
      break 
   end
end

