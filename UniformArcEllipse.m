function [ cartesian_points ] = UniformArcEllipse( n,a )
% Computes the Cartesian coordinates of n points evenly spaced w/r/t
%  arc length on an ellipse with semimajor axis lenght a.

perimeter = EllipsePerimeter(a);

% Sample a uniform distribution on the perimeter.
points = rand(1,n);
arc_points = perimeter*points;

% Build vectors for each coordinate system.
theta = zeros(1,n);
polar_points = zeros(1,n);
cartesian_points = zeros(n,2);

% Convert points to their Cartesian coordinates.
for i = 1:n
   theta(i) = ConvertArcToPolar(arc_points(i),a);
   polar_points(i) = a/sqrt(cos(theta(i))^2 + a^2*sin(theta(i))^2);
   cartesian_points(i,1) = polar_points(i)*cos(theta(i));
   cartesian_points(i,2) = polar_points(i)*sin(theta(i));
end
