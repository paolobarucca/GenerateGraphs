function [A, margin] = naive_configuration(degrees)

nnodes = length(degrees);
A = zeros(nnodes);
check_var = 1;
while(check_var) 
    
   avnodes = find(degrees>0);
   navnodes = length(avnodes);
   
   avA = A(avnodes,avnodes);
   if sum(sum(avA)) == navnodes * (navnodes-1)
       margin = sum(degrees);
      break
   end
   
   if navnodes>1
   i = 1;
   j = 1;
     while (i == j)||(A(avnodes(i),avnodes(j)) )
        i = randi(navnodes);
        j = randi(navnodes);
     end 
  
   A(avnodes(i),avnodes(j)) = 1;
   A(avnodes(j),avnodes(i)) = 1;
   degrees(avnodes(i)) =  degrees(avnodes(i)) -1; 
   degrees(avnodes(j)) =  degrees(avnodes(j)) -1;
   margin = sum(degrees);
          
   if margin==0
       check_var = 0;
   end
     
   else
      margin = sum(degrees);
      check_var = 0;
   end
   
end