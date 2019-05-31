function [ a,b ] = perde( v1,v2 )
%ti dice quanti ne perde ogni vettore
a=0;
b=0;
if length(v1)==3 & length(v2)==3
    for ii=1:3
        if v1(ii) & v2(ii)
            if v1(ii)>v2(ii)
                b=b+1;
            else
                a=a+1;
            end
        end
    end
else display ('error')
end

end

