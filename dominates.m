%___________________________________________________________________%
%  Multi-Objective Dragonfly Algorithm (MODA) source codes demo     %
%                           version 1.0                             %
%                                                                   %
%  Developed in MATLAB R2022a(7.13)                                 %
%                                                                   %
%___________________________________________________________________%

function o=dominates(x,y)

o=all(x<=y) && any(x<y);

end