function [ p ] = gioca(a,b)
%ti dà la percentuale di vittoria di a su b. Scrivi: gioca(a,b) e premi
%invio
aeff=rendi3(a);
beff=rendi3(b);
ciao = vai2(aeff,beff);
aux= [ones(15,1).*a ones(15,1).*b ones(15,1).*ciao(:,3).*2];
ris = aux-ciao;
p=0;
for ii=1:15
    if ris(ii,3)~=0
        if ris(ii,2)==0
            p = p+ris(ii,3);
        else
        if ris(ii,1)==0
        else
           p = p+ris(ii,3)*gioca(ris(ii,1),ris(ii,2));
        end
    end
end

end

