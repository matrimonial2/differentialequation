function [z1, t, y]=euler3(func,fun, y0, dt, t0, tf)
tic;
t=t0:dt:tf;
y(1)=y0;
for i=1:length(t)-1
    y(i+1)=y(i)+dt*(feval(func,fun, t(i), y(i)));
end
z1=toc;