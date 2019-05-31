function [ agg ] = counts( t, sol )
%aggrega le soluzioni di una sfida3
agg = [sol zeros(15, 1)];
s=size(t);
s=s(1);
for ii=1:s
    for jj=1:15
        if t(ii,1)==agg(jj,1) && t(ii,2)==agg(jj,2)
            agg(jj,3)=agg(jj,3)+t(ii,3);
        end
    end
end
    
end

