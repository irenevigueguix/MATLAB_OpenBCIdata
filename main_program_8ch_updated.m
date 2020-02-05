% Created by Irene Vigué-Guix
% February 5th 2020 - Barcelona, Catalonia, Spain

% This MATLAB script was created to import OpenBCI datasets, select the EEG
% data, ands save it as ".mat" files. 

%% LOAD FILE

clear all;
close all;
clc;

%% LOAD FILES

% Prompt user for filename
[fname, fdir] = uigetfile( ...
{  '*.txt*',    'Text Files (*.txt*)'; ...
   '*.xlsx',    'Excel Files (*.xlsx)'; ...
   '*.csv*',    'Text Files (*.csv)'}, ...
   'Pick a file');

% Create fully-formed filename as a string
filename = fullfile(fdir, fname);

% Check that file exists
assert(exist(filename, 'file') == 2, '%s does not exist.', filename);

% Read in the data, skipping the 5 first rows
data = readmatrix(filename);
        

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