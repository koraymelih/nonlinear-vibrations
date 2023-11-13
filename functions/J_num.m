function J=J_num(R,x,w,h,R_x) 

n=size(x,1); %size of the R vector
J=zeros(n,n);
    for i=1:n
        xdum=x; xdum(i)=xdum(i)+h;
        Rdum=R_x(xdum,w);
        J(:,i)=(Rdum-R)/h;
    end
end

%R is the current value of R;
%x is the current x vector;
%w is the current frequency;
%h is the step size;
%R_x is the anonymous function used for the R calculation. Should be
%defined as an anonymous function in the main code