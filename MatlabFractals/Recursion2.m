% main script
clf
hold on
w9exr([0,0],1,0,6)
axis equal off
hold off
% a function after the main script
function w9exr(c,r,a,m)
    % c -- vector for the location of the center
    % r -- radius of the current disk
    % a -- angle for central disk of the next level
    t = linspace(0,2*pi,50);
    x=c(1)+r*cos(t);
    y=c(2)+r*sin(t);
    fill(x,y,'g')
    if m > 0
        c1 = c + 1.5*r*[sin(a),cos(a)];
        w9exr(c1,0.5*r,a,m-1);
        a2 = a +pi/3;
        c2 = c + 1.4*r*[sin(a2),cos(a2)];
        w9exr(c2,0.4*r,a2,m-1);
        a3 = a - pi/3;
        c3 = c + 1.4*r*[sin(a3),cos(a3)];
        w9exr(c3,0.4*r,a3,m-1);
    end
end