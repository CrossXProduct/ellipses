function [ perimeter ] = EllipsePerimeter(a)
%  Compute the perimeter of an ellipse with semimajor axis
%  of length a and semiminor axis of length 1.

% Calculate an approximate perimeter. This formula is due to Ramanujan,
%  with error on the order of h^5 (2e-5 for a = 2).
h = (a - 1)^2 / (a + 1)^2;
perimeter = pi*(a + 1)*(1 + (3*h)/(10 + sqrt(4 - 3*h)));

% Alternatively, use numerical quadrature?
