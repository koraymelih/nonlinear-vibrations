function forces=gap(Y,par)
k=par(1); d=par(2);
eps=d*1e-5;

Ys=Y(1); Yc=Y(2);
Yt=@(t) Ys*sin(t)+Yc*cos(t);
fnt=@(t) k*(Yt(t)-d)/2.*(1+(Yt(t)-d)./sqrt((Yt(t)-d).^2+eps^2));

forces(1)=integral(@(t)fnt(t).*sin(t),0,2*pi)/pi;
forces(2)=integral(@(t)fnt(t).*cos(t),0,2*pi)/pi;
end



