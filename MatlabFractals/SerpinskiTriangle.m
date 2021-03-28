% Sierpinski’s triangle

clf;
hold on;
length = 7;
iterations = 7;
% Serpinski's triangle with lenght = 1 and Iterations = 7
rdtri(0, 0, length, iterations);
axis equal off tight;
title("Sierpinski’s triangle");
hold off;


% Recursive function to draw the sierpinski's triangle, where (a,b) forms
% the lower corner of the triangle, and h is the side length, and m is the
% control integer
function rdtri(a, b, h, m)
    if m > 0
        x_cord = [a, a+h, a+h/2, a];
        y_cord = [b, b, b+h*sqrt(3)/2, b];
        plot(x_cord, y_cord, 'k');
        % First triangle with left-lower of corner of original(parent)
        % triangle as left-lower triangle
        rdtri(a, b, h/2, m-1); 
        % Second triangle with middle of the base of parent triangle
        % as left-lower corner of the triangle
        rdtri(a+h/2, b, h/2, m-1); 
        % Thrid triangle with middle of the left-side of parent triangle
        % as left-lower corner of the triangle
        rdtri(a+h/4, b+h*sqrt(3)/4, h/2, m-1);
    end
end