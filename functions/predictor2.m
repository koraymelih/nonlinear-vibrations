function q_prediction=predictor2(q,q_previous,hJ,hs,R_x,delR_delw)
n=size(q,1)-1;
R=R_x(q(1:end-1),q(end)); 
J=J_num(R,q(1:end-1),q(end),hJ,R_x);
delR_w=delR_delw(q(1:end-1),q(end));
delq=q-q_previous;

J2=[J,delR_w;2*delq'];
q_prediction=q-J2\[zeros(n,1);-2*hs]*hs;
end

%x:         current x vector
%w:         current frequency
%J:         current Jacobian 
%hs:        current stepsize for arc length parameter
%delR_delw: Function for aR/aw(x,w)