function forces=cubic_damp(Y,par) %%%% bu komple yanlış
c=par(1);w=par(2); 
Ys=Y(1); Yc=Y(2);
vt=@(t) w*(Ys*cos(t)-Yc*sin(t));
fnt=@(t) c*vt(t).^3;

    forces(1)=integral(@(t)fnt(t).*sin(t),0,2*pi)/pi;
    forces(2)=integral(@(t)fnt(t).*cos(t),0,2*pi)/pi;
end