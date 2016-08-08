function [EEG] = bandpass_filter_8ch(eeg_data, fsamp, f_low, f_high)
N_ch=size(eeg_data,2);
fsamp = 500; 
f_low = 30;
f_high = 5;
order = 2;

% Low-pass EEG filter
[b,a]=butter(2,2*f_low/fsamp,'low');

for i=1:N_ch
    eeg_data(:,i)=transpose(filtfilt(b,a,eeg_data(:,i)));
end

% High-pass EEG filter
[b1,a1]=butter(2,2*f_high/fsamp,'high');
for i=1:N_ch
    eeg_data2(:,i)=transpose(filtfilt(b1,a1,eeg_data(:,i)));
end

% Notch filter
 Wn = [58 62]/fsamp*2;                % Cutoff frequencies
[bn,an] = butter(order,Wn,'stop');        % Calculate filter coefficients
for i=1:N_ch
    EEG(:,i)=transpose(filtfilt(bn,an,eeg_data2(:,i)));
end

end