function P=Interpol_Newton(X,Y)
    N=length(X);
    DD=zeros(N,N);
    for i=1:N
        DD(i,1)=Y(i);
    end
    for j=2:N
        for i=1:(N-j+1)
            DD(i,j)=DD(i+1,j-1)+DD(i,j-1)/(X(i+j-1)-X(i));
           end 
        end
        P = DD(1,1);
        Q =(%s-X(1));
        for j=2:N
            P=P+DD(1,j)*Q;
            Q=Q*(%s-X(j));
            
    end
endfunction

//Interpol_Newton([0,1,2,8],[0,1,2,8])

function P=erreur(X,m)
    N=length(X);
    P=1;
    for i=1:n
        P=P*(%s-X(i))
    end
    P=P*m
endfunction


//2 et 3
//cas 1
//X=[0,-,1,3,4]
//Y=[1,-1,1,5,19,29]
//p1=Interpol_Lagrange(X,Y)
//p2=Interpol_Newton(X,Y)

//cas 2

//n=20
//X=1:N
//Y=X^3
//p1=Interpol_Newton(X,Y)

err=erreur(X,m)

function [] =Main(p,err,x)
    clf()
    y=abs(f(x)-horner(p,x))
    plot(x,y,'r')
    plot(x,abs(horner(err,x)),'b')
    //tracer différence f(x) et p(x) et tracer polynome erreur
//clf()
//p=Interpol_Newton(X,Y)
//a=linspace(min(X),max(X),200)
//plot(a,horner(p,a),'r')
//plot(a,f(a))
//plot(a,y,'g')
endfunction

function [y]=f3(x)
    y=(%pi)^3*cos(%pi*a)+(2*%pi)
endfunction
X=[0,1/4,1/2]
y=[1,sqrt(2)/2,0]
a=linspace(0,1/2,1000)
y=(%pi)^3*cos(%pi*a)+(2*%pi)
m=max(y)










