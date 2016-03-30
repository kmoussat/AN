function y =g(x)
    y = sqrt(1-0.25*exp(x))
endfunction

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
plot(t, "*b");
()
