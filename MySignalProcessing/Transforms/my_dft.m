function X = my_dft(x)
    % This is a function that implements the DFT algorithm from scratch
    % Input is a 1D time data with time interval of sampling
    % Output is a 1D DFT array that has values in the complex domain
    
    N = length(x);
    X = zeros(1, N);
    
    omega = (2*pi)/(N);  % T has been removed since it gets cancelled out in the expression
    
    % A good way to understand index handling in Matlab -> treat all the
    % iterables as normal 0 to some number, just add 1 to the index
    % referencing in the array
    for k=0:N-1
        for n=0:N-1
            term = x(n+1)*exp(j*(-k*n*omega));
            X(k+1) = X(k+1) + term;
        end
    end
    
end
