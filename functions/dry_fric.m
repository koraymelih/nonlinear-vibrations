function forces=dry_fric(Y,par)
k=par(1); 
muN=par(2);

Ys=Y(1); Yc=Y(2);
Y=sqrt(Ys^2+Yc^2);
if k*Y>muN
    vim=4*muN*(muN-k*Y)/(k*Y^2*pi);
    ksi1=asin((k*Y-2*muN)/(k*Y));
    vre=(2*muN/Y-k)*sqrt(1-((k*Y-2*muN)/(k*Y))^2)/pi+k*ksi1/pi-k/2;
else
    vim=0;
    vre=k;
end
forces=[vre,-vim;vim,vre]*[Ys;Yc];


end
