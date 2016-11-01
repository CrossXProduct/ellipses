function [ cartesian_points ] = EvenPolarEllipse( n, a )
% Returns a vector giving the coordinates of n points evenly spaced w/r/t/
% angle around an ellipse with semiminor axis 1 and semimajor axis a.

polar_points = zeros(1,n);
cartesian_points = zeros(2,n);

for i = 0:n-1
    theta = i*2*pi/n;
    polar_points(i+1) = a/sqrt(cos(theta)^2 + a^2*sin(theta)^2);
    cartesian_points(1,i+1) = polar_points(i+1)*cos(theta);
    cartesian_points(2,i+1) = polar_points(i+1)*sin(theta);
end

cartesian_points = cartesian_points';

end

