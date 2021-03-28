x(1,:) = [0 0];
for j=2:10000
    p = rand;
    if p < 0.40
        x(j,:) = x(j-1,:) + [0,1];
    elseif p <0.65
        x(j,:) = x(j-1,:) + [sqrt(3)/2, 0.5];
    elseif p < 0.9
        x(j,:) = x(j-1,:) + [-sqrt(3)/2, 0.5];
    else
        x(j,:) = [0 0];
    end
end
plot(x(:,1), x(:,2), '*')
axis equal
axis off