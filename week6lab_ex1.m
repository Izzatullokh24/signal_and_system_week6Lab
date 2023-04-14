%Write a script that will visualize discrete waveforms ofperiodic signals. Note that the time scale must be discrete and observe the changes.
% Prompt the discrete waveforms of periodic signals
%week6 exercise 1
A=1
omega = pi/4;
n= -10:10;
x = A* square(omega*n)
figure, stem(n,x)
title('Square signal - Discrete waveform')
