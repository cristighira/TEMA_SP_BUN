%2ms
t=0:0.002:4;
f=0.25;
w=2*pi*f;
s=1.5*abs(sin(w*t));
subplot(3,1,1)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');