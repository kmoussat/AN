function y=f(x)
    y=1/x;
endfunction

function y=fint(x)
    y=log(x);
endfunction

function A=trapeze(fa,a,b,N)
    A=0;
    h=(b-a)/N;
    for i=1:h:(b-h)
        A=A+((fa(i+h)+fa(i))*h/2);
    end
endfunction
a=1;
b=2;
n=10;
Aire=zeros(512);
erreur=zeros(512);

A=trapeze(f,a,b,n)
err=abs(A-(fint(b)-fint(a)));

for i=1:10
    Aire(i)=trapeze(f,a,b,2^i)
    erreur(i)=abs(Aire(i)-(fint(b)-fint(a)));
    lnE(i)=log(erreur(i))
    lnh(i)=log(2^i);
end

plot(lnh,lnE)
