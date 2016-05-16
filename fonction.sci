function [t,y] = PointMilieu(a,b,N,alpha,f,yexacte,option)
    t = linspace(a,b,N+1)
    y = linspace(alpha,alpha,N+1)
    h = (b-a)/N
      
     //RK
    if(option == -1)
        for i=2:(N+1)
            K1=f(t(i-1),y(i-1))
            K2=f(t(i-1)+2*h/3,y(i-1)+2*h/3*K1)
        end
        y(i)=y(i-1)+h*(1/4*K1+3/4*K2)
    end
    
    //Euler
    if(option == 0)
        for i=2:(N+1)
            y(i)=y(i-1)+h*f(t(i-1),y(i-1))
        end
    end
    
    //Point Milieu
    if(option == 1)
        for i=2:(N+1)
            y(i)=y(i-1)+h*f(t(i-1)+h/y(i-1)+h/2*f(t(i-1),y(i-1)))
        end
    end
    
    //HEUN
    if(option == 2)
        for i=2:(N+1)
            y(i)=y(i-1) + h/2*(f(t(i-1),y(i-1))+f(t(i),y(i-1)+h*f(t(i-1),y(i-1))))
        end
    end
    
    //Méthode RUNGE KATTU 4
    if(option == 3)
        for i=2:(N+1)
            h = (b-a)/N
            K1 = f(a,aa)
            K2 = f(a+h/2,aa+h/2*K1)
            K3=f(a+h/2,aa+h/2*K2)
            K4=f(a+h/2,aa+h*K3)
            z=aa+h/6*(K1+2*K2+2*K3+K4)
        end
     end
    
    //Méthode des points tiers
    
    if(option==4)
        for i=2:(N+1)
            y(i)=y(i-1)+h/2*(f(t(i-1)+h/3,y(i-1)+h/3*f(t(i-1),y(i-1))))+f(t(i-1)+2*h/3,y(i-1)+2*h/3*f(t(i-1),y(i-1)))
        end
    end
    
clf()
plot(t,y,'b','linest','none','marker','*')
u = linspace(a,b,200)
z = linspace(alpha, alpha, 200)
for j=1:200
    z(j)=yexacte(u(j))
end
plot(u,z)
    
endfunction


