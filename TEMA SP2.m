clc
T=40;
f0=1/T;
w0=2*pi*f0;
step=T/10000;
t = 0:step:12*T;
N=50;
C = zeros(1,2*N+1);
x=(1+square(w0*t,30))/2;
for n = -N:N
    C(n+N+1) = 1/T * integral(@(t)((1+square(w0*t,30))/2).*exp(-1j*n*w0*t),0,T) ;
    re = real(C(n+N+1));
    im = imag(C(n+N+1));
    if abs(re)<10^-10
        re = 0;
     end
    if abs(im)<10^-10
        im = 0;
    end
    C(n+N+1) = re+1j*im ;
end
sCompl = 0;
for n = -N:N
    sCompl = sCompl + C(n+N+1)*exp(1j*n*w0*t) ;
end
hold on
plot(t,real(sCompl),':r',t,imag(sCompl),':r');
plot(t,x);
xlabel("Time[s]");
ylabel("Amplitude");
title("Complex fourier series")
hold off

figure(3);
hold on
stem((-N:N)*w0,2*abs(C));
plot((-N:N)*w0,2*abs(C),':r');
xlabel('Frequency w0 [rad/s]');
ylabel('Amplitudes |C(nw0|');
title('Amplitude spectrum for CFS');
hold off
