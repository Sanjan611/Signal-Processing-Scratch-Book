% Program 7B.3 from the book DSP: A Practical Approach

Fs = 10000;
N = 41; % Filter length
M = [0 0 1 1 0 0];  % Desired magnitude response
F = [0 0.1 0.2 0.3 0.4 1];  %Band edge frequencies

