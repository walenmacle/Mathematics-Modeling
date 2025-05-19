%___________________________________________________________________%
%  Multi-Objective Dragonfly Algorithm (MODA) source codes demo     %
%                           version 1.0                             %
%                                                                   %
%  Developed in MATLAB R2022a(7.13)                                 %
%                                                                   %
%___________________________________________________________________%


function o = RouletteWheelSelection(weights)
accumulation = cumsum(weights);
p = rand() * accumulation(end);
chosen_index = -1;
for index = 1 : length(accumulation)
    if (accumulation(index) > p)
        chosen_index = index;
        break;
    end
end
o = chosen_index;