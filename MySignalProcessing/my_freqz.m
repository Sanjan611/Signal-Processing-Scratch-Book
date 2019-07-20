function [H, W] = my_freqz(B, A)
    % B and A are the num and den coefficients respectively
    % N is the number of frequency points between 0 and Fs/2
    
    % NOTES: Not exactly the MATLAB function, some mistake somewhere?
    
    if length(A)~=length(B)
        disp('The coefficients are not equal!');
        return;
    end
    
    N = 512;
    
    len = length(B);
    H = zeros(1, N);
    num = 0;
    den = 0;
    Fs = 1000;
    
    W = linspace(0, pi, N);
    
    for i=1:N
        for n=1:len
            num = num + B(n)*exp(1i*W(i)*(1-n));
            den = den + A(n)*exp(1i*W(i)*(1-n));
        end
        H(i) = num/den;
    end
    
    mag_H = abs(H);
    
    
    plot(W/pi, mag2db(mag_H));
end