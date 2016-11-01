function [ cartesian_points ] = UniformPolarEllipse( n, a )
% Returns a vector giving the coordinates of n points uniformly sampled 
% w/r/t/ angle around an ellipse with semiminor axis 1 and semimajor axis a.

polar_points = zeros(1,n);
cartesian_points = zeros(2,n);
theta = 2*pi*rand(1,n);


for i = 1:n
    polar_points(i) = a/sqrt(cos(theta(i))^2 + a^2*sin(theta(i))^2);
    cartesian_points(1,i) = polar_points(i)*cos(theta(i));
    cartesian_points(2,i) = polar_points(i)*sin(theta(i));
end

cartesian_points = cartesian_points';

end

