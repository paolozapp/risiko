function [ ciao ] = rimuovizero( ciao )
%rimuove le probabilità nulle
n=size(ciao);
if n(1)==1 && ciao(1,3)==0
    ciao=[];
end

if n(1)>1
    if ciao(1,3)==0
    ciao=rimuovizero(ciao(2:end));
else
    ciao=[ciao(:,3) ; rimuovizero(ciao(2:end))]; 
    end
end

end

