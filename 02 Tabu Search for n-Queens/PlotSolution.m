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

function PlotSolution(x)

    n = numel(x);
    
    y = 1:n;
    
    for i = 1:n-1
        for j = i+1:n
            if abs(x(i)-x(j)) == abs(y(i)-y(j))
                plot(x([i j])-0.5, y([i j])-0.5, 'b:', 'LineWidth', 2);
                hold on;
            end
        end
    end
    
    plot(x-0.5, y-0.5, 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r');
    hold off;
    
    title([num2str(n) '-Queens']);
    
    set(gca, 'XTick', 0:n);
    set(gca, 'YTick', 0:n);
    
    set(gca, 'XTickLabel', {});
    set(gca, 'YTickLabel', {});
    
    grid on;
    
    axis equal;
    
    xlim([0 n]);
    ylim([0 n]);
    
end