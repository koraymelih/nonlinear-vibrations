function write_linear_data(n,K,M,C,gama,F,file_name)

%write number of DOFS
n_text{1,1}='n_start'; 
n_text{2,1}=num2str(n);
n_text{3,1}='n_end';

%Write upper diagonal of the stiffness matrix
K_text=cell(n+2,1);
K_text{1}='K_start'; K_text{end}='K_end';
for i=1:n
    %dummy=num2str(K(i,i:n),'%s'); 
    dummy=sprintf('%f,',K(i,i:n)); dummy=dummy(1:end-1);
    K_text{i+1}=dummy;
end

%write Upper Diagonal Part of Mass matrix
M_text=cell(n+2,1);
M_text{1}='M_start'; M_text{end}='M_end';
for i=1:n
    %dummy=num2str(K(i,i:n),'%s'); 
    dummy=sprintf('%f,',M(i,i:n)); dummy=dummy(1:end-1);
    M_text{i+1}=dummy;
end


% M_text{1,1}='M_start'; 
% M_text{2,1}=num2str(diag(M)');
% M_text{3,1}='M_end'; 

%Write upper diagonal of the damping matrix C
C_text=cell(n+2,1);
C_text{1}='C_start'; C_text{end}='C_end';
for i=1:n
    %dummy=num2str(C(i,i:n)); 
    dummy=sprintf('%f,',C(i,i:n)); dummy=dummy(1:end-1);
    C_text{i+1}=dummy;
end

%write Loss Factor
H_text{1,1}='H_start'; 
H_text{2,1}=num2str(gama);
H_text{3,1}='H_end';

%write Forcing Vector, F as a nx2 matrix
F=reshape(F,n,2);
F_text=cell(n+2,1);
F_text{1}='F_start'; F_text{end}='F_end';
for i=1:n
    dummy=sprintf('%f,',F(i,:)); dummy=dummy(1:end-1);
    F_text{i+1}=dummy;
end

text=[n_text;K_text;M_text;C_text;H_text;F_text];
writelines(text,file_name);
end

