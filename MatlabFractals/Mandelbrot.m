% Mandelbrot Set - z_(n+1) = z_n*z_n + c where c is a complex number

a=-2;
b= 1;
c = -1;
d = 1;
m = 600;
n = 400;
B = zeros(n, m);

for j=1:m
    x(j) = a + (j-0.5)*(b-a)/m;
end

for k=1:n    
    y(k) = c + (k-0.5)*(d-c)/n;
end
for j=1:m
    for k=1:n
        c = x(j) + 1i*y(k);
        for p=1:100
            z(1) = 0;
            z(p+1) = z(p)^2 + c;
        end
        if abs(z(101))< 3
            B(k,j) = 1;
        end
    end
end


imagesc(x,y,B)
axis equal tight
colorbar

