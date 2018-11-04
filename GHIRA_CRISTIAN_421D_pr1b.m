
t=0:0.02:4;
f=0.5;
a=2*pi*f;
duty=25;
nivel=0.25;
procent=0.75;
s=(procent*square(a*t,duty))-nivel;
subplot(3,1,2)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]')