function x_new=N_R(imax,x_ini,w,R_x,hJ) 

x=x_ini;
for i=1:imax
    R=R_x(x,w);

    error=norm(R);
    if error<1e-8
        break
    end
    J=J_num(R,x,w,hJ,R_x); %Jacobian
    x=x-inv(J)*R; %new N-R estimate
end
x_new=x;
end

%Regular Newton Raphson, can not follow the path
%imax: maximum iteration number
%x_ini: initial guess
%w: frequency
%R_x: Residual function
%hJ: stepsize for numeric Jacobian calculation