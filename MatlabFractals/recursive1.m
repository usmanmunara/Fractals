% main script
clf
plot([0 1 1 0 0],[0 0 1 1 0], 'k')
hold on
axis equal off
drawbox(0,1,0,1,7)
hold off

% recursive function, after the main script
function drawbox(x0,x1,y0,y1,m)
% given a square [x0,x1] x [y0, y1]
    if m > 0
        x = [x0, (x0+x1)/2, x1]; % x-coordinates of smaller squares
        y = [y0, (y0+y1)/2, y1]; % y-coordinates of smaller squares
        k = randi(4);
            for i=1:2
                for j=1:2
                    kk = 2*i+j-2; % convert (i,j) to kk in {1, 2, 3, 4}
                    if kk == k
                        fill([x(i),x(i+1),x(i+1),x(i)],[y(j),y(j),y(j+1),y(j+1)],'y')
                    else
                        drawbox(x(i),x(i+1),y(j),y(j+1),m-1)
                    end
                end
            end
    end
end