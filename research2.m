clear;
clc;
clf;
filename = uigetfile('*.*', 'Select File');
A = load(filename);
x = A.sig_405_RS;
y = A.timeFP_RS;
z=A.sig_472_RS;
kt =plot(y,x)
hold on
tp =plot(y,z,'black')
xlabel('signal'); 
ylabel('time');
legend([tp kt],{'GCAMP','Control'})
grid on;
title('signal vs time');
int = trapz(x)
Int = trapz(z)
Plz = trapz(x,z)
diff= Int-int
figure
xy = categorical({'Control','GCAMP','GCAMP-control'});
ht=[int,Int,diff];
bar(xy,ht)
ylabel("area")