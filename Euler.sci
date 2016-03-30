function[t,y]=Euler(a,b,N,alpha,f)
    h=(b-a)/N;
    t=ones(1,N+1);
    t(1,1)=a;
    t(1,N+1)=b;
    y=ones(1,N+1);
    y(1,1)=alpha;
    for i=2:N
         t(1,i)=t(i-1)+(b-a)/N;
    end
    for i=2:N+1

        y(i)=y(1,i-1)+h*f(t(1,i-1),y(1,i-1));
    end
endfunction

function [z]=f(t,y)
    return (-y+t+1);
endfunction

funcprot(0);
//function =Main()
    
//endfunction

