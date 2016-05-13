function[t,y]=PredieCorrecteur(a,b,N,alpha,bb,f,fexacte)
    t=linspace(a,b,N+1)
    y=linspace(alpha,alpha,N+1)
    
    h=(b-a)/N
    y(2)=alpha
   
    for i=3:(N+1)
        //predicteeur
        y(i+1)=y(i-1)+h/2*(f(t(i-1),y(i-1))+f(t(i-1),y(i-1)+h*f(t(i-1),y(i-1))))
      //correcteur
        y(i)=y(i-1)+h/12*(5*f(t(i),y(i)+8*f(t(i-1),y(i-1))-f(t(i-2),y(i-2))))
    end
    clf()
    plot(t,y,'b','linest','none','marker','*')
    z=linspace(alpha,alpha,N+1)
    for j=1:(N+1)
        z(j)=yexacte(t(j))
        end
    plot(t,z)
endfunction


function z=f2exacte(y,t)
   z= exp(t*t)-exp(y)+2*t
endfunction

function z=f1exacte(t,y)
    z=t*t
endfunction

function z=f1(t,y)
    z=y-t+1
endfunction
function z= RK4 (a,b,N,aa,f)
    h=(b-a)/N
    K1=f(a,aa)
    K2=f(a+h/2,aa+h/2*K1)
    K3=f(a+h/2,aa+h/2*K2)
    K4=f(a+h/2,aa+h*K3)
    z=aa+h/6*(K1+2*K2+2*K3+K4)
endfunction


function [coef]= analyse(a,b,alpha,f,yexacte,yexacte,q)
    
    reponse=linspace(1,q,q)
    for i=1:q
    N=2^(i)
    
     [t,y]=PrediCorrecteur(a,b,N,alpha,f,yexacte)
     z=linspace(alpha,alpha,N+1)
     for j=1:(N+1)
         z(j)=yexacte(t(j))
     end
     
     reponse(i)=log(max(abs(y-z)))
 end
 clf()
 yy=linspace(1,q,q)
 plot(linespace(yy,reponse,'b','linest','none','marker','*'))
 
 coef=(reponse(q)-reponse(q-1))/(yy(q)-yy(q-1))/log(2)
endfunction


[t,y]=PredieCorrecteur(0,5,100,1,1,f1,f1exacte)



