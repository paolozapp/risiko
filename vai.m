function [ ciao ] = vai( n,m )
%se n attacca m quanti ne perdono? Scrivi vai(n,m) e premi invio
clc
sol=[0 1; 0 2; 0 3; 1 0; 2 0; 3 0; 1 1; 2 1; 3 1; 1 2; 2 2; 3 2; 1 3; 2 3; 3 3];
t=sfida(creasistema(n),creasistema(m));
ciao=count(t,sol);
%ciao=rimuovizero(ciao);
if sum(ciao(:,3))>1.01 || sum(ciao(:,3))<0.99
    display('Error')
end
end



