%% PLOTS

% Variables

close all;

% Specified variables - EEG Data No filtered
ch_1 = eegdata(:,1);   % OpenBCI 32bit Board
ch_2 = eegdata(:,2);
ch_3 = eegdata(:,3);
ch_4 = eegdata(:,4);
ch_5 = eegdata(:,5);
ch_6 = eegdata(:,6);
ch_7 = eegdata(:,7);
ch_8 = eegdata(:,8);

% Specified variables
EEG_1 = EEG(:,1);   % OpenBCI 32bit Board
EEG_2 = EEG(:,2);
EEG_3 = EEG(:,3);
EEG_4 = EEG(:,4);
EEG_5 = EEG(:,5);
EEG_6 = EEG(:,6);
EEG_7 = EEG(:,7);
EEG_8 = EEG(:,8);

% Comparision

% OpenBCI 32bit Board
figure('Name','Comparison of the EEG Data Filtered and Non Filtered (OpenBCI 32bit Board)','NumberTitle','off')
subplot (2,4,1)
plot(time, ch_1);
hold on
plot(time, EEG_1, 'r');
title ('Channel 1');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,2)
plot(time, ch_2);
hold on
plot(time, EEG_2, 'r');
title ('Channel 2');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,3)
plot(time, ch_3);
hold on
plot(time, EEG_3, 'r');
title ('Channel 3');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,4)
plot(time, ch_4);
hold on
plot(time, EEG_4, 'r');
title ('Channel 4');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,5)
plot(time, ch_5);
hold on
plot(time, EEG_5, 'r');
title ('Channel 5');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,6)
plot(time, ch_6);
hold on
plot(time, EEG_6, 'r');
title ('Channel 6');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,7)
plot(time, ch_7);
hold on
plot(time, EEG_7, 'r');
title ('Channel 7');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,8)
plot(time, ch_8);
hold on
plot(time, EEG_8, 'r');
title ('Channel 8');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

%% SIGNIFICANT EEG DATA 

% OpenBCI 32bit Board
figure('Name','Filtered EEG Data (OpenBCI 32bit Board)','NumberTitle','off')
subplot (2,4,1)
plot(time, EEG_1);
title ('Channel 1');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,2)
plot(time, EEG_2);
title ('Channel 2');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,3)
plot(time, EEG_3);
title ('Channel 3');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,4)
plot(time, EEG_4);
title ('Channel 4');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,5)
plot(time, EEG_5);
title ('Channel 5');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,6)
plot(time, EEG_6);
title ('Channel 6');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,7)
plot(time, EEG_7);
title ('Channel 7');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,8)
plot(time, EEG_8);
title ('Channel 8');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');


%% SIGNIFICANT EEG DATA 

% OpenBCI 32bit Board
figure('Name','Filtered EEG Data (OpenBCI 32bit Board)','NumberTitle','off')
subplot (2,4,1)
plot(time, EEG_1);
title ('Channel 1');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,2)
plot(time, EEG_2);
title ('Channel 2');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,3)
plot(time, EEG_3);
title ('Channel 3');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,4)
plot(time, EEG_4);
title ('Channel 4');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,5)
plot(time, EEG_5);
title ('Channel 5');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,6)
plot(time, EEG_6);
title ('Channel 6');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,7)
plot(time, EEG_7);
title ('Channel 7');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

subplot (2,4,8)
plot(time, EEG_8);
title ('Channel 8');
xlabel('Time (ms)');
ylabel('Ampitude (\muV)');

