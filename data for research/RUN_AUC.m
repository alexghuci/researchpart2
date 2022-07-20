% clc;
% clf;
% clear;
filepath="C:\Users\alexh\Downloads\data for research\";
filename = dir('*.mat'); %read the files into matlab
num_files = length(filename); %record how many files have been found
sorted = sort({filename.name});
for i = 1:4%length(num_files)
    untitled(filepath+filename(i).name)
end