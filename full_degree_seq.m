function d_full = full_degree_seq(cin, cout, alpha, nnodes)

d_full = zeros([nnodes 1]);

for i = 1:nnodes
    d_full(1:nnodes/2) = degree_seq(cin, alpha, nnodes/2);
    d_full((nnodes/2)+1:nnodes) = degree_seq(cout, alpha, nnodes/2);
end
