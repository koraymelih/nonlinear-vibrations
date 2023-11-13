function forces=square_stiff(Y,par)
k=par(1);
Ys=Y(1); Yc=Y(2);
Yt=@(t) Ys*sin(t)+Yc*cos(t);
fnt=@(t) k*sign(Yt(t)).*sqrt(abs(Yt(t)));
%fnt=@(t) kc*abs(Yt(t)).*Yt(t);

forces(1)=2*integral(@(t)fnt(t).*sin(t),0,pi)/pi;
forces(2)=2*integral(@(t)fnt(t).*cos(t),0,pi)/pi;
end