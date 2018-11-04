%200 ms
t=0:0.002:4;
f=0.3333;
a=2*pi*f;
s=0.4*(sin(a*t)+abs(sin(a*t)));
subplot(3,1,1)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');