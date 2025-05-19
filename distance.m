%___________________________________________________________________%
%  Multi-Objective Dragonfly Algorithm (MODA) source codes demo     %
%                           version 1.0                             %
%                                                                   %
%  Developed in MATLAB R2022a(7.13)                                 %
%                                                                   %
%___________________________________________________________________%

function o = distance(a,b)

for i=1:size(a,1)
    o(1,i)=sqrt((a(i)-b(i))^2);
end

