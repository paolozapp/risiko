function [ t ] = sfida( v1,v2 )
%restituisce tutti i risultati di una sfida
t=[];
s1=size(v1);
s1=s1(1);
s2=size(v2);
s2=s2(1);
for ii=1:s1
    for jj=1:s2
    [a b]=perde(v1(ii,1:3),v2(jj,1:3));
    t(end+1,:)=[a b v1(ii,4)*v2(jj,4)];
end

end

