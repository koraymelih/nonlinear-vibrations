function forces=piece_lin(Y,par)
k1=par(1); k2=par(2); d=par(3);
Ys=Y(1); Yc=Y(2);

Y=sqrt(Ys^2+Yc^2);
if Y>d
    v=2*(k1-k2)/pi*(asin(d/Y)+d/Y*sqrt(1-d^2/Y^2))+k2;
else
    v=k1;
end
forces=[v,0;0,v]*[Ys;Yc];

end
