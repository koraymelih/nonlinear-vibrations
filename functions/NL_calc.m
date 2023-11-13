function fN=NL_calc(n,NL_data,x,w)

k=size(NL_data,1);
fN=zeros(2*n,1); %initiate nonlinear force vector
func_list={@cubic;@gap;@piece_lin;@dry_fric;@cubic_damp;@square_stiff}; 

for ik=1:k
    i=NL_data(ik,1); j=NL_data(ik,2);
    type=NL_data(ik,3);
    par=NL_data(ik,4:6);
    if type==5
        par(2)=w; %cubic damping needs w
    end
    func=func_list{type}; 
    if i==j
        Y(1)=x(i); Y(2)=x(n+i);
        forces=func(Y,par);
        fN(i)=fN(i)+forces(1); fN(n+i)=fN(n+i)+forces(2);
    else
        Y(1)=x(i)-x(j); Y(2)=x(n+i)-x(n+j);
        forces=func(Y,par);
        fN(i)=fN(i)+forces(1); fN(n+i)=fN(n+i)+forces(2);
        fN(j)=fN(j)-forces(1); fN(n+j)=fN(n+j)-forces(2);
    end

end



end
%n: actual DOF of the system
%NL_data=[NL_indices,NL_types,NL_parameters]
%NL_indices: [i,j]
%NL_types: an integer number between 1 to 6
%NL_parameter: array of parameters, depends on the type
