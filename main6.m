clear
basemva = 100;  accuracy = 0.001; accel = 1.8; maxiter = 100;

%        IEEE 6-BUS TEST SYSTEM (American Electric Power)
%        Bus Bus  Voltage Angle   ---Load---- -------Generator----- Static Mvar
%        No  code Mag.    Degree  MW    Mvar  MW  Mvar Qmin Qmax    +Qc/-Ql
busdata=[ 1 1 1.05 0 0 0 0 0 0 0 0
 2 0 1.00 0 1.00 0.10 0.00 0.00 0 0 0
 3 0 1.00 0 0.00 0.00 1.50 0.75 0 0 0
 4 2 1.02 0 0.45 0.20 0.00 0.00 2 0 0
 5 0 1.00 0 0.40 0.25 0.00 0.00 0 0 0
 6 0 1.00 0 0.30 0.10 0.00 0.00 0 0 0 ] ;

%                                        Line code
%         Bus bus   R      X     1/2 B   = 1 for lines
%         nl  nr  p.u.   p.u.   p.u.     > 1 or < 1 tr. tap at bus nl
linedata=[ 1 3 0.04 0.3 0.01 1
 2 3 0.03 0.2 0.01 1
 3 4 0.03 0.2 0.01 1
 3 5 0.03 0.2 0.01 1
 4 5 0.03 0.15 0.01 1
 5 6 0.05 0.3 0.01 1
 1 2 0.0 0.4 0.00 1.05
 2 6 0.0 0.2 0.00 1.02 ] ;

lfbus                           % form the bus admittance matrix
lfnewton                % Load flow solution by Newton Raphson method
busout             % Prints the power flow solution on the screen
lineflow         % Computes and displays the line flow and losses
