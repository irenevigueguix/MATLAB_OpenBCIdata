% Created by Irene Vigue Guix
% June 13th 2016 - Brooklyn, NY (OpenBCI HQ)

% This MATLAB script was created to import OpenBCI datasets, select the EEG
% data, ands save it as ".mat" files. 

%% LOAD FILE

clear all;
close all;
clc;

% Load files
[data] = open_files();

%% GENERAL PARAMETERS

% Separate EEG data and auxiliary data         
eegdata = data(:,2:9);          % EEG data
auxdata = data(:,10:12);        % Aux data

% General variables
time = (0:4:length(eegdata)*4-1)';  % Time vector
N_ch = 8;                           % Number of channels

% Band-pass Filtering Paramaters
fsamp = 250;                    % Sampling frequency
tsample = 1/fsamp;              % Period of samples
f_low = 50;                     % Cut frequency for high-pass filter
f_high = 1;                     % Cut frequency for low-pass filter

%% PRE-PROCESSING
% Bandpass Filter
for i=1:N_ch
    EEG(:,i)= bandpass_filter_8ch(eegdata(:,i), fsamp, f_low, f_high);
end

%% SAVE EEG DATA FOR EEGLAB
% Save raw data (unfiltered data)
save eegdata.txt eegdata -ascii;
save('eegdata.mat','eegdata');

% Save filterd data
save EEG.txt EEG -ascii;
save('EEG.mat','EEG');
