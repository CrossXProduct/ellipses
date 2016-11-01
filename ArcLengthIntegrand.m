function [ integrand ] = ArcLengthIntegrand( theta , a )
% Computes the arc length produced by travelling theta
%  radians around an ellipse w/ semimajor axis a 
%  (starting at the positive x-axis)

drdtheta = -a*(2*a^2*sin(theta).*cos(theta) - 2*sin(theta).*cos(theta))./(2*(a^2*sin(theta).^2 + cos(theta).^2).^(3/2));

r = a./sqrt(cos(theta).^2 + a^2*sin(theta).^2);

integrand = sqrt(r.^2 + drdtheta.^2);

end
