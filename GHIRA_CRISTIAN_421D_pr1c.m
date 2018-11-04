t=0:0.2:4;% 2 perioade
f=0.5;
a=2*pi*f;
duty=25;
nivel=0.25;
procent=0.75;
s=(procent*square(a*t,duty))-nivel;
subplot(3,1,3)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]')
