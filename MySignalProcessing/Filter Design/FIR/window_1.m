% Code to plot the frequency response of different window functions for FIR
% filtering

Fs = 1000;  % Sampling frequency
Fn = Fs/2;  % Nyquist frequency

N = 73;         % filter length
beta = 5.65;    % for the kaiser window only

% Normalise the cutoff frequencies
fc1 = 125/Fn;
fc2 = 275/Fn;
Fc = [fc1 fc2];  % if we want a passband filter

% Obtain the windowed filter coefficients
%hn = fir1(N-1, Fc, kaiser(N, beta));       % Kaiser
%hn = fir1(N-1, Fc, boxcar(N));             % Boxcar
hn = fir1(N-1, Fc, hamming(N));             % Hamming

% Compute and plot the frequency response
[H, f] = freqz(hn, 1, 512, Fs);
mag = 20*log10(abs(H));
plot(f, mag), grid on
xlabel('Frequency (Hz)')
ylabel('Magnitude Response (dB)')