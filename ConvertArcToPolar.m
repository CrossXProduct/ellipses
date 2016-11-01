function [ theta ] = ConvertArcToPolar( arc, a )
% Converts the position on an ellipse w/ semimajor axis a given
%  by an arc length into the corresponding angle.

% Set an initial guess to be proportional to the arc length. This
%  would be the exact answer in the  case of a circle.
perimeter = EllipsePerimeter(a);
theta = 2*pi*arc/perimeter;

tol = 10^(-6); % tolerance parameter
count = 0;     % emergency stop counter
err = 1;

% Use Newton's method to update.
while err > tol
   calc_arc = quad(@(t)ArcLengthIntegrand(t,a) , 0 , theta );  % Use a numerical
   %  method to estimate the arc length. There may be a better quadrature
   %  function to use. 
   err = calc_arc - arc;
   if abs(err) < tol
      break;
   else
      delta = ArcLengthIntegrand(theta,a);  % the derivative
      theta = theta - (calc_arc - arc)/delta;  % Newton's method update
   end
   count = count + 1;
   % Emergency stopping condition
   if count > 1000
      break
   end
end

end
