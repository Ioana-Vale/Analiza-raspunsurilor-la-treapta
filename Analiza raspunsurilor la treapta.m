%%ordin 1
load('lab3_order1_5.mat');

u=data.u;
y=data.y;
figure
subplot(2,1,1)
plot(t,u)
subplot(2,1,2)
plot(t,y)

u_id=u(1:100);
y_id=y(1:100);
t_id=t(1:100);

y_ss=2;
y_id_0=0;
u_id_ss=4;
u_id_0=0;
K=(y_ss-y_id_0)/(u_id_ss-u_id_0);

K=0.5;
y1max=y_id_0+0.632*(y_ss-y_id_0);

%plot(t_id,[u_id,y_id])
%hold on
%plot(t_id,y_id)
%hold on
%plot(t_id,y1max*ones(length(t_id)));

T=3.5;
H=tf([K],[T 1])

u_val=u(201:end)
y_val=y(201:end)
t_val=t(201:end)

y2=lsim(H,u_val,t_val)
e=y2-y_val;
MSE=1/length(y_val)*sum(e.^2);
fprintf('MSE este: %.5f\n ',MSE)
figure
plot(t_val,[u_val,y_val]);
hold on
plot(t_val,[u_val,y2])
hold on
plot(t_val,u_val)

%%ordin 2
load('lab3_order2_5.mat')
u=data.InputData;
y=data.OutputData;

figure
plot(t,u,t,y)

i1 = 282;
i2 = 292;
i3 = 372;
i4 = 395;

u0 = mean(u(i1:i2));
ust = mean(u(i3:i4));
y0=mean(y(i1:i2));
yst=mean(y(i3:i4));
K=(yst-y0)/(ust-u0);

ymax=9.1;
sigma=(ymax-yst)/(yst-y0)

zeta=-log(sigma)/sqrt(pi^2+log(sigma)^2)

i5 = 311;
i6 = 320;

 Tosc=2*(t(i6)-t(i5))

 wn=2*pi/Tosc/sqrt(1-zeta^2)

 A = [0,1;
     -wn^2,-2*zeta*wn];
 B = [0;K*wn^2];
 C= [1,0];
 D= 0;

 %sys=ss(A,B,C,D);
 H=tf([K*wn^2],[1 2*zeta*wn wn^2]);
 ysim = lsim(H,u,t,[y(1),0]);
 figure
 plot(t,y,t,ysim,t,u)

 J= 1/sqrt(length(t))*norm(y-ysim)
empt=norm(y-ysim)/norm(y-mean(y))*100
%fprintf('empt este: %.5f\n',empt)
