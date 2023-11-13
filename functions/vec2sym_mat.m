function out=vec2sym_mat(vec)
n=0.5*(-1+sqrt(1+8*max(size(vec))));

out=zeros(n,n);
indices=[];
for k=1:n
    indices=[indices,(n*(k-1)+k):n*k];
end

out(indices)=vec;
out=out + out.' - diag(diag(out));
end