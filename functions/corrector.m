function [q_new,ite]=corrector(q,q_previous,imax,R_x,delR_delw,hs,hJ)
error=100;
for i=1:imax
    R=R_x(q(1:end-1),q(end));
    delq=q-q_previous;
    h=delq'*delq-hs^2;
    
    J=J_num(R,q(1:end-1),q(end),hJ,R_x); %Jacobian
    delR_w=delR_delw(q(1:end-1),q(end));
    q=q-[J,delR_w;2*delq']\[R;h];
    
    R=R_x(q(1:end-1),q(end));
    error=norm([R;h]);
    if error<1e-8
        break
    end
end
q_new=q;
ite=i;
end

