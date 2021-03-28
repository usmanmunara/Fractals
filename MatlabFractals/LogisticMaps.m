n = 500;
m = 1000;
p = 500;
a = linspace(3,4,n);
hold on
for i=1:n
    x(1)=rand;
    for j= 2 : m+p
        x(j)=a(i)*x(j-1)*(1-x(j-1));
    end
    aa = a(i)*ones(1,p);
    plot(aa,x(m+1:m+p),'b.','MarkerSize',1)
end
hold off