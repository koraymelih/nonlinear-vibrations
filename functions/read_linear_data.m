function [n,K,M,C,gama,F]=read_linear_data()
[file,path]=uigetfile;
file_name=[path,file];
text=fileread(file_name);
text=strip(text); %remove the trailing and leading white spaces

n=extractBetween(text,'n_start','n_end');
K=extractBetween(text,'K_start','K_end');
M=extractBetween(text,'M_start','M_end');
C=extractBetween(text,'C_start','C_end');
gama=extractBetween(text,'H_start','H_end');
F=extractBetween(text,'F_start','F_end');

n=strip(n); n=split(n); n=str2num(cell2mat(n));
%extract K
K=strip(K); K=split(K);
vec=[];
for i=1:n
    vec=[vec,str2num(cell2mat(K(i)))];
end
K=vec2sym_mat(vec);
%extract M
M=strip(M); M=split(M);
vec=[];
for i=1:n
    vec=[vec,str2num(cell2mat(M(i)))];
end
M=vec2sym_mat(vec);

%extract C
C=strip(C); C=split(C);
if isempty(cell2mat(C(1)))
    C=zeros(n,n);
else
    vec=[];
    for i=1:n
        vec=[vec,str2num(cell2mat(C(i)))];
    end
    C=vec2sym_mat(vec);
end
%extract gama
gama=strip(gama); gama=split(gama); gama=str2num(cell2mat(gama));
% %extract F
F=strip(F); F=split(F);
dum=[];
for i=1:n
    dum=[dum;str2num(F{i})];
end
F=reshape(dum,n*2,1);
% F=str2num(cell2mat(F));
% F=reshape(F,n*2,1);

end