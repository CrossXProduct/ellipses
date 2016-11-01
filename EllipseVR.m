% Script for computing Vietoris-Rips complexes of an ellipse.
tic;
n = 100;   % Number of points to sample
a = 2;   % Length of semimajor axis
max_dim = 3;        % for now
max_filt_value = 1; % for now
num_div = 20;   % Default

point_cloud = EvenPolarEllipse(n,a);
%point_cloud = UniformPolarEllipse(n,a);
%point_cloud = EvenArcEllipse(n,a);
%point_cloud = UniformArcEllipse(n,a);

figure
scatter(point_cloud(:,1), point_cloud(:,2), '*');
axis equal ; grid on;

%metric_space = metric.impl.EuclideanMetricSpace(point_cloud);
%stream = api.Plex4.createVietorisRipsStream(point_cloud, max_dim, max_filt_value, num_div);
%persistence = api.Plex4.getModularSimplicialAlgorithm(max_dim, 2);
%intervals = persistence.computeIntervals(stream);

%options.filename = strcat('VR-Ellipse-a-',num2str(a),'-n-',num2str(n));
%options.max_filtration_value = max_filt_value;
%options.max_dimension = max_dim - 1;
%plot_barcodes(intervals, options);
toc
