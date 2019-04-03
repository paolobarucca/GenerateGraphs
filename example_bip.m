%this code is for generating a bipartite network from the microcanonical configuration model 

c1 = 10;
c2 = 5;

n1 = 100;
n2 = 200;

degrees1 = poissrnd(c1,[n1 1]); 
degrees2 = poissrnd(c2,[n2 1]); 

%these lines make the constraints compatible, i.e. sum(degrees1) == sum(degrees2)
delta = sum(degrees1) - sum(degrees2);
if  delta> 0 
    for k=1:delta 
   degrees2(end-k+1) = degrees2(end-k+1) + 1;
    end
else 
   for k=1:-delta 
   degrees1(end-k+1) = degrees1(end-k+1) + 1;
    end
end

trials = 100;
[A, success] = greedy_bip_configuration(degrees1 , degrees2, trials);

success
