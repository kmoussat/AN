
function Point=SaisirPoint(N)
    
    Point=ones(N,2);
    for i=1:N
       Point(i,1)= input("point_x");
       Point(i,2)=input("point_y");
    end
    
endfunction

function PMC = MoindresCarres(M,Points)
    s=size(Points)
    N=s(1)
    U=ones(N,M+1);
    for j=1:(M+1)
        for i=1:N
        U=(i,j)=Points(i,1)^(j-1)
        end
    
end
a=ones(N,1)
a=inv((U')*U)*(U')*Points(:,2)
PMC=poly(a,"s","coef")
endfunction

function []=Main(Points,PMC)
    N=input("nb de points")
    Points=SasirPoint(N)
    M=input("degre du poly")
    PMC=MoindresCarres(M,PMC)
    clf()
    plot(Points(:,1),Points(:,2),'b','linest','none','marker','*')
    a=linspace(min(Points(:,1)),max(Points(:,1)),200)
    plot(a,horner(PMC,a),'r)
endfunction

function []=Exercice3()
endfunction
