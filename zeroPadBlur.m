function[zero_padded] = zeroPadBlur(x,w,overlap)

% Input: 
%   1) x - time domain signal to be processed
%   2) w - window size that will be used in the stft function
%   3) overlap - percentage of window overlap that will be used in the 
%       stft function
%
% Output:
%   1) zero padded signal so that smearing due to overlap is not lost 
%       (input to the stft function)

zero_padded = vertcat(zeros(ceil(w*overlap/100), 1), x, zeros(ceil(w*overlap/100), 1));