% Design Project 1: Analysis of Acceleration Data
% File: analysis.m
% Description: A MATLAB program that analyzes acceleration data from an Excel file.
% Date: 30 January 2026
% By: Advay R Chandra
% chand289
% Sarim Khan
% khan681 
% Emma C Wolcott 
% ewolcott
% Katherine E Hughley
% khughle
% Section: 3
% Team: 41
% 
% ELECTRONIC SIGNATURE
% Advay R Chandra
% Sarim Khan
% Emma C Wolcott
% Katherine E Hughley
% 
% The electronic signatures above indicate that the program
% submitted for evaluation is the combined effort of all
% team members and that each member of the team was an
% equal participant in its creation. In addition, each
% member of the team has a general understanding of
% all aspects of the program development and execution.
% 
% A BRIEF DESCRIPTION OF WHAT THE PROGRAM OR FUNCTION DOES
% This program reads acceleration data from an Excel file,
% computes the magnitude of the acceleration, and plots it against time.

clc;
clear all;
g = 9.81; % Acceleration due to gravity in m/s^2

% ---------------------------------------------------
%  Inputs
% ---------------------------------------------------

data = transpose(importdata("Data.xlsx"));

% ---------------------------------------------------
%   Computations
% ---------------------------------------------------

time = data(1,:); % Time data
x_acc = data(2,:) * g; % X-axis acceleration
y_acc = data(3,:) * g; % Y-axis acceleration
z_acc = data(4,:) * g; % Z-axis acceleration

% Calculate the magnitude of the acceleration
acc_magnitude = sqrt(x_acc.^2 + y_acc.^2 + z_acc.^2);
acc_magnitude_adj = acc_magnitude - g; % Adjust for gravity

% ---------------------------------------------------
%   Outputs
% ---------------------------------------------------

figure(1);
plot(time, acc_magnitude_adj, "LineStyle", "-", "LineWidth", 1.5);
hold on;
plot(time, acc_magnitude, "LineStyle", "-", "LineWidth", 1.5);
plot(time, x_acc, "LineStyle", "--", "LineWidth", 1);
plot(time, y_acc, "LineStyle", "--", "LineWidth", 1);
plot(time, z_acc, "LineStyle", "--", "LineWidth", 1);
hold off;
xlabel("Time (s)");
ylabel("Acceleration (m/s^2)");
title("Acceleration vs. Time");
legend("Total Mag Acceleration (Adjusted)", "Total Mag Acceleration", "X Acceleration", "Y Acceleration", "Z Acceleration", "Location", "southwest");
grid;