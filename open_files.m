function [data] = open_files()
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
data = csvread(filename,5,0);
        
end
