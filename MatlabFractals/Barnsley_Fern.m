% Barnsley Fern
m=20000;
x=zeros(2,m);
for j=2:m
    a=rand;
    if a < 0.85
        A = [0.85, 0.04; -0.04, 0.85];
        b = [0; 1.6];
    elseif a < 0.92
        A = [0.2, -0.26; 0.23, 0.22];
        b = [0; 1.6];
    elseif a < 0.99
        A = [-0.15, 0.28; 0.26, 0.24];
        b = [0; 0.44];
    else
        A = [0, 0; 0, 0.16];
        b = [0; 0];
    end
    x(:,j)= A*x(:,j-1)+b;
end
plot(x(1,:),x(2,:),'g.')
axis equal
axis off