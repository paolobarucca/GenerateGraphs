function [A, margin] = naive_bip_configuration(degrees1, degrees2)

nnodes1 = length(degrees1);
nnodes2 = length(degrees2);
A = zeros([nnodes1 nnodes2]);
check_var = 1;
while(check_var) 
    
   avnodes1 = find(degrees1>0);
   navnodes1 = length(avnodes1);
   
   avnodes2 = find(degrees2>0);
   navnodes2 = length(avnodes2);
   
   avA = A(avnodes1,avnodes2);
   if sum(sum(avA)) == navnodes1 * navnodes2
       margin = sum(degrees1)+sum(degrees2);
      break
   end
   
   if navnodes1+navnodes2>1
   i = 1;
   j = 1;
     while (A(avnodes1(i),avnodes2(j)) )
        i = randi(navnodes1);
        j = randi(navnodes2);
     end 
  
   A(avnodes1(i),avnodes2(j)) = 1;
   degrees1(avnodes1(i)) =  degrees1(avnodes1(i)) -1; 
   degrees2(avnodes2(j)) =  degrees2(avnodes2(j)) -1;
   
   margin = sum(degrees1)+sum(degrees2);
          
   if margin==0
       check_var = 0;
   end
     
   else
      margin =sum(degrees1)+sum(degrees2);
      check_var = 0;
   end
   
end