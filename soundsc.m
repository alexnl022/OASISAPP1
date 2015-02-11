function soundsc(x,Fs)

% function sound(x,Fe)
% autoscale and play vector as sound  
% x : input waveform
% Fs : sampling rate (Hz)
% B. David, 28/01/2015

x = x/max(abs(x))/1.01;
wavwrite(x,Fs,'temp.wav');
%system('play temp.wav')
%delete('temp.wav');
end