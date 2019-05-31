function [ v ] = creasistema( n )
%crea un sistema di n posizioni
if n==1
    v=[];
    for ii=1:6
        k=1/6;
        v(end+1,:)=[ii 0 0 k];
    end
end
if n==2
    v=[];
    for ii=1:6
        k=1/18;
        for jj=1:ii 
        if ii==jj
            k=1/36;
        end
        v(end+1,:)=[ii jj 0 k];
        end
    end
end
if n==3
    v=[];
    for ii=1:6
        for jj=1:ii 
            if jj==ii
            end
            for zz=1:jj
            k=1/36;
            if jj==ii
                k=1/72;
            end       
            if zz==jj || zz==ii
                k=2/3.*k-1/216;
            end
            v(end+1,:)=[ii jj zz k];
            end
        end
    end
end

end

