%___________________________________________________________________%
%  Multi-Objective Dragonfly Algorithm (MODA) source codes demo     %
%                           version 1.0                             %
%                                                                   %
%  Developed in MATLAB R2022a(7.13)                                 %
%                                                                   %
%___________________________________________________________________%

% This function initialize the first population of search agents
function X=initialization(SearchAgents_no,dim,ub,lb)

Boundary_no= size(ub,2); % numnber of boundaries

% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    ub_new=ones(1,dim)*ub;
    lb_new=ones(1,dim)*lb;
else
    ub_new=ub;
    lb_new=lb;
end

% If each variable has a different lb and ub
for i=1:dim
    ub_i=ub_new(i);
    lb_i=lb_new(i);
    X(:,i)=rand(SearchAgents_no,1).*(ub_i-lb_i)+lb_i;
end

X=X';
