% Activity X.X.X: A MATLAB Activity.
% File: analysis.m
% Description: This program reads acceleration data from an Excel file,
% computes the magnitude of the acceleration, and plots it against time.
% Date: 30 January 2026
% By: Advay R Chandra
% chand289
% Full Name team member 2
% Login ID
% Full Name team member 3 
% Login ID
% Full Name team member 4
% Login ID
% Section: Number
% Team: Team Number
% 
% ELECTRONIC SIGNATURE
% Advay R Chandra
% Full Name team member 2
% Full Name team member 3
% Full Name team member 4
% 
% The electronic signatures above indicate that the program
% submitted for evaluation is the combined effort of all
% team members and that each member of the team was an
% equal participant in its creation. In addition, each
% member of the team has a general understanding of
% all aspects of the program development and execution.
% 
% A BRIEF DESCRIPTION OF WHAT THE PROGRAM OR FUNCTION DOES 

clc;
clear all;

% ---------------------------------------------------
%  Inputs
% ---------------------------------------------------

data = transpose(importdata("Data.xlsx"));

% ---------------------------------------------------
%   Computations
% ---------------------------------------------------

time = data(1,:);
x_acc = data(2,:);
y_acc = data(3,:);
z_acc = data(4,:);

% Calculate the magnitude of the acceleration
acc_magnitude = sqrt(x_acc.^2 + y_acc.^2 + z_acc.^2);

% ---------------------------------------------------
%   Outputs
% ---------------------------------------------------

figure;
plot(time, [acc_magnitude; x_acc; y_acc; z_acc]);
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');
title('Acceleration Magnitude vs. Time');
legend('Mag Acceleration', 'X Acceleration', 'Y Acceleration', 'Z Acceleration');
grid on;