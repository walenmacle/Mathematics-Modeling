%___________________________________________________________________%
%  Multi-Objective Dragonfly Algorithm (MODA) source codes demo     %
%                           version 1.0                             %
%                                                                   %
%  Developed in MATLAB R2022a(7.13)                                 %
%                                                                   %
%___________________________________________________________________%

function ranks=RankingProcess(Archive_F, ArchiveMaxSize, obj_no)

my_min=min(Archive_F);
my_max=max(Archive_F);

if size(Archive_F,1)==1
    my_min=Archive_F;
    my_max=Archive_F;
end

r=(my_max-my_min)/(20);

ranks=zeros(1,size(Archive_F,1));

for i=1:size(Archive_F,1)
    ranks(i)=0;
    for j=1:size(Archive_F,1)
        flag=0; % a flag to see if the point is in the neoghbourhood in all dimensions.
        for k=1:obj_no
            if (abs(Archive_F(j,k)-Archive_F(i,k))<r(k))
                flag=flag+1;
            end
        end
        if flag==obj_no
            ranks(i)=ranks(i)+1;
        end
    end
end
end