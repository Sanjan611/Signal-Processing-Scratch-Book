function w = my_hamming(L, sflag)
    % input parameter is N, which defines how many points the Hamming
    % window should be ie the window length 
    
    if nargin < 2
        sflag = 'symmetric';
    end
    
    if strcmp(sflag,'periodic')==1
        N = L;
        n = 0:N;
        w = 0.54 - 0.46*cos((2*pi/N)*n);
        w = w(1:end-1);
        w = w';
    elseif strcmp(sflag, 'symmetric')==1
        N = L-1;
        n = 0:N;
        w = 0.54 - 0.46*cos((2*pi/N)*n);  
        w = w'; 
    else
        error('Second argument given is not supported by this function.\n%s',...
            'Second argument is ''symmetric'' by default, otherwise ''periodic''.');
    end
    
    wvtool(w');
    
end
