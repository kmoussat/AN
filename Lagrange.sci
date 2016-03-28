//function scilab newton détermine l'interpolation polynomiale de Lagrange
//X contient les points de l'interpolation
//Y contient les valeurs de l'interpolation
//P est l'interpolation polynomiale déduite par la divisions des différences

function[P]=lagrange(X,Y) //X nodes,Y values;P is the numerical Lagrange
//polynomial interpolation
n=length(X); // n is the number of nodes. (n-1) is the degree
x=poly(0,"x");
P=0;
for i=1:n, L=1;
 for j=[1:i-1,i+1:n] L=L*(x-X(j))/(X(i)-X(j));
     end
 P=P+L*Y(i);
end
endfunction

//X=[0;2;4]; 
//Y=[1;5;17]; 
//P=lagrange(X,Y)
// P = 1 + x^2
