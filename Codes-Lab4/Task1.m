% Source Coding 
% Task 1
clear all; close all; clc;
addpath("library_p\");

% Load the input image
lorem_img = imread('lorem_img.png');

% transpose

T_lorem_img = transpose(lorem_img);
% display the raw image
figure(1); clf;
imshow(lorem_img);
title('Original image');
figure(2); clf;
imshow(T_lorem_img);
title('Transpose image');
% run-length encode
run_length_code = runlength_encode(lorem_img);
T_run_length_code = runlength_encode(T_lorem_img);
% convert the binary array into an decimal array of run lengths
%runs = bin2decArray(run_length_code);
runs = bin2decArray(T_run_length_code);

size_raw_data = length(lorem_img(:))
size_raw_Tdata = length(T_lorem_img(:))
size_run_length = length(run_length_code)
size_run_Tlength = length(T_run_length_code)

size_huffman = [];
dict = [1,0];
for i=1:length(dict)
    % Huffman encode
    % huffman_encode(runs,dict)
    % if dict = 1, same dictionary for both black and white runs
    % if dict = 0, separate dictionaries for black and white runs
    size_huffman = [ size_huffman length(huffman_encode(runs,dict(i)))];
    
end
size_huffman
