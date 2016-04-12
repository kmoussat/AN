//Crank Nicolson
function [t,y]=CrankNicolson (a,b,N,alpha,f,n)
    t=linspace(a,b,N+1)
    y=linspace(alpha,alpha,N+1)
    h=(b-a)/N
    y(1)=alpha
    C=0
    for i=2:(N+1)
        C=y(i-1)+h/2*f(t(i-1),y(i-1))
        xstar=y(i-1)
        for j=1:n
            xstar=y(i)+h/2*f(t(i),xstar)
        end
        y(i)=xstar
    end
endfunction

function z=f1(t,y)
    z=-y+t+1
endfunction

function  ()
endfunction


function []= Main(a,b,N,alpha,f,fexacte,n)
    [t,y]=CrankNicolson(a,b,N,alpha,f,n)
    clf()
    plot(t,y,'b','linest','none','marker','*')
    z=linspace(alpha,alpha,N+1)
    for j=1:(N+1)
        z(j)=fexacte(t(j))
        end
    plot(t,z)
endfunction

function z= f1exacte(t,y)
    z=t*t
endfunction




function []= analyse(a,b,alpha,f,yexacte,n,q)
    
    reponse=linspace(1,q,q)
    for i=1:10
    N=2^q
    
     [t,y]=CrankNicolson(a,b,N,alpha,f,n)
     z=linspace(alpha,alpha,N+1)
     for j=1:(N+1)
         z(j)=yexacte(t(j))
     end
     
     reponse(i)=log(max(abs(y-z)))
 end
 yy=linspace(1,q,q)
 plot(linespace(yy,reponse,'b','linest','none','marker','*'))
 
 coef=(reponse(q)-reponse(q-1))/(yy(q)-yy(q-1))/log(2)
endfunction

analyse(0,5,1,f1,f1exacte,10,10)
Main(0,5,5,1,f1,f1exacte,5)
//main(0,1,50,0,f2,f2exacte,5)
