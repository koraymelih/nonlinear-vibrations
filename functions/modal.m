function [Phi,D]=modal(K,M,m)
%mmodes are kept
[Phi,D]=eigs(K,M,m,'smallestreal');

Mr=Phi'*M*Phi;
%mass normalization
for i=1:m
    Phi(:,i)=Phi(:,i)/sqrt(Mr(i,i));
end

end