//meth1
functon[P1]=poly1(n,v)
if n=length(v) then
    P=0
    for i=1:n
    P=P+v(i)*%s**(i-1)
end
P1=P
end
endfunction

//meth2
degre=input("rentrez le degré max")
m = ones(1,degre)
for i=1:degre
    i
    m[i)=input("rentrez le coef de i")
    
end
P=poly(m2,"s","coef")

degr2e=input("rentrez le degré max du polynome 2")
m2=ones(1,degre)
for i=1:degre2
    i
    m2[i)=input("rentrez le coef de i")
end
P2=poly(m2,"s","coef")
disp(P)
disp(P2)

degmax=max(degre,degre2)
degmin=min(degre,degre2)
m3=ones(1,degmin)
for i=1:degmin
    m3(i)=m(i)*m2(i)
end
P3=poly(m3,"s","coef")
disp(P3)

m4=ones(1,degmax)
for i=1:degmax
    m4(i)=m(i)+m2(i)
end
P4=poly(m3,"s","coef")
disp(P4)
