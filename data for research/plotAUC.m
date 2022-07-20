 function A = untitled(filename)
%filepath="C:\Users\alexh\OneDrive\Documents\data for research";
%filename=uigetfile('*','Select file');
A = load(filename);
x = A.sig_405_RS;
y = A.timeFP_RS;
z = A.sig_472_RS;
n = z-min(z(100:end));
figure
kt = plot(y,x,'b');
hold on
tp = plot(y,z,'black');
grid on
ky = plot(y,n);
xlabel('signal'); 
ylabel('time');
legend([tp kt ky],{'GCAMP','Control','normalized'})
grid on;
title('signal vs time:'+filename);

figure 
pz=trapz(y,n);
bz=bar(pz);
 legend([bz],{'normalized'})
ylabel("area")
title(filename)
  end