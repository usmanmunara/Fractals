% Muhammad Usman FAROOQ
% SID: 55301764

hold on
p = 500;
n = 200;
m = 1024;
for r = linspace(1, 5, p)
    xx = logistp(r, n, m);
    plot(r*ones(1,m), xx, 'b.', 'MarkerSize', 1);
end
xlabel('r');
ylabel('xx');
title('bifurcation diagram');
axis tight
hold off


function xx = logistp(r, n, m)
x = rand;
for j=1:n
    x = x*exp(r*(1-x));
end
for j =1:m
    x = x*exp(r*(1-x));
    xx(j) = x;
end
end
    