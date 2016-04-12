//Crank Nicolson

function[t,y]=CrankNicolson(a,b,N,alpha,f)
    t = linspace(a,b,N+1)
    y = linspace(alpha,alpha,n+1)
    h = (b-a)/N)
    C = 0
    
    
    for i=2:(N+1)
        C=y(i-1) + h/2 * f(t(i-1), y(i-1))
        xstar = y(i-1)
        
        for j=1:100
            xstar = C + h/2 * f(t(i),xstar)
        end
        y(i)=xstar
    end
endfunction

[t,y] = CrankNicolson(0,5,5,1,f1)


function z = f1(t,y)
    z= -y+t+1
endfunction

function z = f2(t,y)
    z = exp(t^2)-exp(y)2*t
endfunction

