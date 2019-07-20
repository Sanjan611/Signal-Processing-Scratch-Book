clc; close all;

t = [0:0.1:2*pi];
sig = sin(t);
partition = [-1:0.2:1];
codebook = [-1.2:0.2:1];

% Now optimize, using codebook as an initial guess
[partition2, codebook2] = lloyds(sig, codebook);
[index, quants, distor] = quantiz(sig, partition, codebook);
[index2, quants2, distor2] = quantiz(sig, partition2, codebook2);

[distor, distor2] 