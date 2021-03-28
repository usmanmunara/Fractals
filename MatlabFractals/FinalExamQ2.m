% For a complex number z_0 = x +iy and the function/sequence of numbers
% z_k = z_{k-1}^2 - 0.7 -0.4i. 
% This is basically mandelbrot fractal with c = - 0.7 -0.4i
% mod(z_k) >= 2
% k >= 200
% B(x,y) = mod(z_k)/sqrt(k) - This is probably a superior julia set

m = 1251;
n = 1001;
x = linspace(-1.5, 1, m);
y = linspace(-1, 1, n);
B_matrix = zeros(n,m);

for j=1:n
    for l=1:m
        z_0 = x(l) + 1i*y(j);
        z_k = 0;
        k = 0;
        while abs(z_k)<2 && k <200
            z_k = z_0^2 - 0.7 - 0.4*1i;
            z_0 = z_k;
            k = k + 1;
        end
       % B for specific x and y
       B = abs(z_k)/sqrt(k);  
       B_matrix(j, l) = B;
    end
end
pcolor(x, y, B_matrix);
% title('MATH is an Art');
colorbar
shading interp 






