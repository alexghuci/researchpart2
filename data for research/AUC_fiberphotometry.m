
%  function A %= AUC_fiberphotometry(filename)
% % filename = uigetfile('*.*', 'Select File');
filepath="C:\Users\alexh\OneDrive\Documents\data for research";
filename="day 1 saline channel 2";
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
n = (z-min(z))./(max(z)-min(z))
hold on
plot n
grid on;
title('signal vs time');

figure
xy = categorical({'Normalized GCAMP'});
bar(n)
ylabel("area")
% end
