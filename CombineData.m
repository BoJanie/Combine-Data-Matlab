% This program will combine several matlab files of data into one
% Make sure that this matlab file is in the same folder as the data
clear all; close all;
cd = pwd; 
GroupData = {}; % cell array
dataFileNames = dir('*.mat');
for parti=1:size(dataFileNames)
    load(dataFileNames(parti).name); %load that participants data variable
    if parti==1
        GroupData = data; %data = name of the file
    else
        GroupData = cat(1,GroupData,data(2:end,:));
    end
end
save('GroupData.mat','GroupData');
