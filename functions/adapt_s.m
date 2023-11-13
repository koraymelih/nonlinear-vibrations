function s_new=adapt_s(eps,s,smin,smax)
if eps<0.5
    eps=0.5;
elseif eps>2
    eps=2;
end
s_new=eps^0.5*s;
if s_new<smin
    s_new=smin;
elseif s_new>smax
    s_new=smax;
end

end