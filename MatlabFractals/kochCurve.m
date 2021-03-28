% Draw Koch's curve% main script
p = [0, 1, 0.5+sqrt(3)/2*1i,0];
for m=1:5    
    pn = [];    
    n = length(p)-1;    

    for j=1:n        
        q = addq(p(j),p(j+1));        
        pn = [pn, q];    
    end
    p = [pn, p(1)];
end
fill(real(p),imag(p),'y')
axis equal off
% function for adding points for each edge
function q = addq(p1,p2)
    r = (p2-p1)/3;
    q = zeros(1,4);
    q(1) = p1;
    q(2) = p1 + r;
    % q(3) = q(2) - 1.1*r*exp(-1i*pi/3);
    % q(3) = q(2) + r*exp(1i*pi/3);
    q(3) = q(2) + r*exp(-1i*pi/3);q(4) = q(2) + r;
end
    