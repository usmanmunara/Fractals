% main script for Koch’s snowflake, requires function "addq"
% set the number of levels.
mmax = 5;
% points of a triangle as columns of p, repeating the first point
p = [0, 0; 1, 0; 1/2, sqrt(3)/2; 0 0]';
for m=1:mmax
pnew = []; % start an empty matrix pnew
n = length(p); % should give the number of columns
for j=1:n-1
q = addq(p(:,j),p(:,j+1));
pnew = [pnew, q]; % make existing matrix pnew bigger
end
p=[pnew, p(:,1)]; % repeating the first point
end
fill(p(1,:),p(2,:),'y')
axis equal off
% a function below the main script
function q = addq(p1,p2)
r = (p2-p1)/3;
q1 = p1 + r;
t = pi/3; % rotation angle
R = [cos(t), sin(t); -sin(t), cos(t)]; % rotation matrix, clockwise
q2 = q1 + R*r;
q3 = p1 + 2*r;
q = [p1,q1,q2,q3];
end