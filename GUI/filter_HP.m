function y = filter_HP(x)
%FILTER_HP Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.1 and the DSP System Toolbox 9.3.
% Generated on: 18-Feb-2019 11:23:57

%#codegen

% To generate C/C++ code from this function use the codegen command. Type
% 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    % % FIR least-squares Highpass filter designed using the FIRLS function.
    %
    % % All frequency values are in Hz.
    % Fs = 16000;  % Sampling Frequency
    %
    % N     = 127;  % Order
    % Fstop = 70;   % Stopband Frequency
    % Fpass = 120;  % Passband Frequency
    % Wstop = 1;    % Stopband Weight
    % Wpass = 1;    % Passband Weight
    %
    % % Calculate the coefficients using the FIRLS function.
    % b  = firls(N, [0 Fstop Fpass Fs/2]/(Fs/2), [0 0 1 1], [Wstop Wpass], ...
    %            'Hilbert');
    
    Hd = dsp.FIRFilter( ...
        'Numerator', [0.00296697493974489 0.00291360008085404 ...
        0.00285297465350303 0.00278487090945519 0.00270905702514831 ...
        0.00262529652913327 0.00253334764584848 0.00243296254582526 ...
        0.00232388649105053 0.00220585686260337 0.00207860205581284 ...
        0.0019418402259856 0.00179527786516665 0.00163860818735819 ...
        0.00147150929601523 0.00129364210337368 0.001104647966082 ...
        0.000904145995541518 0.000691729994095546 0.000466964959465573 ...
        0.000229383089278248 -2.15207952581886e-05 -0.000286294503034218 ...
        -0.000565534519615508 -0.000859892985612601 -0.00117008577458214 ...
        -0.00149690187394245 -0.00184121431697256 -0.00220399296983339 ...
        -0.00258631954801835 -0.00298940532603248 -0.00341461211825591 ...
        -0.00386347725572402 -0.00433774347364521 -0.00483939487257315 ...
        -0.00537070044258852 -0.00593426707312281 -0.00653310455150057 ...
        -0.00717070583857748 -0.007851146983642 -0.00857921252578332 ...
        -0.00936055430797753 -0.0102018945795126 -0.0111112885065787 ...
        -0.0120984674139304 -0.0131752933013369 -0.0143563691414781 ...
        -0.0156598710450366 -0.0171087024876469 -0.0187321260733124 ...
        -0.0205681204421759 -0.0226668683997544 -0.0250960648333846 ...
        -0.0279492576033888 -0.0313594562283261 -0.0355223465434168 ...
        -0.0407380769026139 -0.0474916160435136 -0.0566207738172816 ...
        -0.069708249234734 -0.0901457604546169 -0.126752086144667 ...
        -0.211863271277903 -0.636505299431937 0.636505299431937 ...
        0.211863271277903 0.126752086144667 0.0901457604546169 0.069708249234734 ...
        0.0566207738172816 0.0474916160435136 0.0407380769026139 ...
        0.0355223465434168 0.0313594562283261 0.0279492576033888 ...
        0.0250960648333846 0.0226668683997544 0.0205681204421759 ...
        0.0187321260733124 0.0171087024876469 0.0156598710450366 ...
        0.0143563691414781 0.0131752933013369 0.0120984674139304 ...
        0.0111112885065787 0.0102018945795126 0.00936055430797753 ...
        0.00857921252578332 0.007851146983642 0.00717070583857748 ...
        0.00653310455150057 0.00593426707312281 0.00537070044258852 ...
        0.00483939487257315 0.00433774347364521 0.00386347725572402 ...
        0.00341461211825591 0.00298940532603248 0.00258631954801835 ...
        0.00220399296983339 0.00184121431697256 0.00149690187394245 ...
        0.00117008577458214 0.000859892985612601 0.000565534519615508 ...
        0.000286294503034218 2.15207952581886e-05 -0.000229383089278248 ...
        -0.000466964959465573 -0.000691729994095546 -0.000904145995541518 ...
        -0.001104647966082 -0.00129364210337368 -0.00147150929601523 ...
        -0.00163860818735819 -0.00179527786516665 -0.0019418402259856 ...
        -0.00207860205581284 -0.00220585686260337 -0.00232388649105053 ...
        -0.00243296254582526 -0.00253334764584848 -0.00262529652913327 ...
        -0.00270905702514831 -0.00278487090945519 -0.00285297465350303 ...
        -0.00291360008085404 -0.00296697493974489]);
end

y = step(Hd,double(x));


% [EOF]
