function P =Interpol_Lagrange(X,Y)
    P=0;
    n=length(x);
    for i in 1:n
        Q=1;
        for j in 1:n
            if (j~=1) 
                Q=Q*(%s-X(j))/(X(i)-X(j));
            end
        end
        P=P+Y(i)*Q; 
    end
endfunction


clf()
X=[0,1,5]
Y=[2,0,3]
plot(X,Y,'b','linest','none','marker','+')
p=Interpol_Lagrange(X,Y)
x=linspace(min(X)-1,max(X)+1,200)
plot(x,horner(p,x),'r')

function Main
()
endfunction


function x=f(y)
    for i=1:length(y)
        x(i)=1/(1+y(i)*y(i))
    end
    x=
endfunction


