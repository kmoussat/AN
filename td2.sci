//f(x=e^x+4x^2-4=?0)
//1=fC1,f'(x)=e^x+8x>0, pour x appartient a 0,1)
//f(o)=-3,f(1)=e>0=>oor au moins x*, f(x*)=0

//2)4x²=4-e^x<=>x=(1-(e^x)/4)/x=g1(x)=f(x*)=0
//x^2=1-(e^x)/4 <=>x=sqrt(1-(e^x)/4)=g(x)
function y =g(x)
    y = sqrt(1-0.25*exp(x))
endfunction

function y =dg(x)
    y = (-(e^x)/4)/(2*sqrt(1-(e^x)/4)
endfunction



//3)il faudra environ itérations.

//5)
function x = PtFixe(x0, eps, Nmax, g)
    k=1
    x(1) = x0
    while k<Nmax
        y = g(x(k))
        if (abs(y-x(k))>eps)
            k = k+1
            x(k) = y 
        else
            disp("au bout de "+ string(k) + " iterations, on a une bonne valeur approchée de x* ")
            k = Nmax
        end
    end
endfunction
t = PtFixe(0, 1e-5, 30, g);
disp(t);
plot(t, "*r");

//autre methode: 
function y=gx()
    N=length(x)
    y)ones(1,N)
    for i=1:N
        y(i)=sqrt(1-exp(x(i))/4)
    end
    end
endfunction

x=linspace(0,1,100)
lf()
plot2d(x,g(x))

function y =dg(x)
    y = (-(e^x)/4)/(2*sqrt(1-(e^x)/4)
endfunction

function x=Ptfixd(x0,eps,Nmax,g)
    x=[x0]
    i=1
    while(abs(g(x0)-xo)>eps)&(i<Nmax)
        x0=g(xo);
        x=[x xo]
        i=i+1
        end
endfunction


res=Ptfixe(1,0.00001,1000,g)
clf()
plot2d(1;length(res),f(res))
plot2d(1:length(res),zeros(1,length(res))

x0=f(xo)/f'(x0)
pi/4=xo
pi/4)²=cos pi/4
=pi²/16-(sqrt(2))/2

function x=newton(eps,Nmax,f,fp)
    x=[%pi/4]
    xo=%pi/4
    while(abs(f(x0))>eps)&(i<Nmax)
        x0=x0-f(xo)/f
endfunction

function x=convergence(Nmax,f,fp)
    x=[1]
    x0=%pi/4
    i=1
    for (i in 1:15)
        (abs(f(x0))>eps)&(i<Nmax)
        x0=x0-f(x0)/fp(xo);
        x=[x x0]
        i=i+1
    end
    x=[x i]
    
    end
endfunction
