%Operating frequency (Hz)
fc = 77.0e9;

%Transmitted power (W)
Ps = 3e-3;

%Antenna Gain (linear)
G =  10000;

%Minimum Detectable Power
Pe = 1e-10;

%RCS of a car
RCS = 100;

%Speed of light
c = 3*10^8;

%TODO: Calculate the wavelength

lamda = c / fc;

%TODO : Measure the Maximum Range a Radar can see. 
num = Ps * G * G * lamda * lamda * RCS;
den = Pe * (4*pi)^3;
r = num/den;

range = nthroot(r,4);

disp (range);