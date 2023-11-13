function forces=cubic(Y,par)
kc=par(1);
Ys=Y(1); Yc=Y(2);
Yt=@(t) Ys*sin(t)+Yc*cos(t);
fnt=@(t) kc*Yt(t).^3;

    forces(1)=integral(@(t)fnt(t).*sin(t),0,2*pi)/pi;
    forces(2)=integral(@(t)fnt(t).*cos(t),0,2*pi)/pi;
end

