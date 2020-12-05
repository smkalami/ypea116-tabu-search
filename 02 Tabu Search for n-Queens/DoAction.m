%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA116
% Project Title: Implementation of Tabu Search for n-Queens Problem
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Tabu Search (TS) in MATLAB (URL: https://yarpiz.com/243/ypea116-tabu-search), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function q = DoAction(p, a)

    switch a(1)
        case 1
            % Swap
            q = DoSwap(p, a(2), a(3));
            
        case 2
            % Reversion
            q = DoReversion(p, a(2), a(3));
            
        case 3
            % Insertion
            q = DoInsertion(p, a(2), a(3));
            
    end

end