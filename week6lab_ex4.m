% Define the ramp function
ramp = @(t, a) max(t/a, 0);

% Define the time vector
t = linspace(-5, 5, 1000);

% Generate two ramp functions with different slopes
ramp1 = ramp(t, 1);
ramp2 = ramp(t, 2);

% Generate a unit-amplitude step function using ones
step = ones(size(t));
step(t < 0) = 0;

% Concatenate the ramp functions with the step function using row-wise concatenation
signal1 = ramp1.*step; ramp2.*(1-step);
signal2 = ramp2.*step; ramp1.*(1-step);

% Plot the signals
figure;
subplot(2,1,1);
plot(t, signal1);
title('Signal 1');
xlabel('Time');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, signal2);
title('Signal 2');
xlabel('Time');
ylabel('Amplitude');