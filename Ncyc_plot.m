function Ncyc_plot(n)
T={"HNO3","HNO2","NO","N2O","N2","H2NOH","N2H4","NH3","O-N"};
a=[5 3 2 1 0 -1 -2 -3 -3];
b=[0 0 0 1 0 -2.45 -1 0 3] ;
plot(b,a,'.')
hold on
text(b,a,T);
%%
yh(0,4,-pi/2,pi/2,1,[0,0,1],n(1));% no3-no2
yh(0,4,pi/2,3*pi/2,1,[1,0.5,0.5],n(2));%no2-no3 

yh(0,3.5,pi/2,3*pi/2,1.5,[1,0.5,0.5],n(3));%no-no3

yh(0,2.5,-pi/2,pi/2,0.5,[0,0,1],n(4));% no2-no
    yh(0,2.5,pi/2,3*pi/2,0.5,[1,0.5,0.5],n(5));%no-no2

    yh(0,1,0,pi/2,1,[0,0,1],n(6));% no-n2o

    yh(0,-0.5,pi/2,1.07*pi,2.5,[1,0.5,0.5],n(7));%no-no2

    yh(0,1,-pi/2,0,1,[0,0,1],n(8));% n2o-n2
yh(0,1,pi/2,3*pi/2,1,[1,0.5,0.5],n(9));%n2-no

yh(0,0,-pi/2,pi/2,3,[0,0,1],n(10));% no3-no2

 yh(0,-1.5,-pi/2,pi/2,1.5,[0,0,1],n(11));% no3-no2


 yh(0,-1.2,pi/2,1.25*pi,1.2,[1,0.5,0.5],n(12));%n2-no

yh(0,-0.1,pi/2,1.35*pi,2.1,[1,0.5,0.5],n(13));%n2-no

yh(-1.31,-3.31,0.0745*pi,0.43*pi,1.35,[1,0.5,0.5],n(14));%n2-no 

yh(0,-0.5,1.07*pi,1.5*pi,2.5,[1,0.5,0.5],n(15));%no-no2

p1=plot([0,3],[-3.05 -3.05],'color',[0,0.6,0]);p1.Color(4) = 0.2; p1(1).LineWidth =n(16);
p2=plot([0,3],[-2.95 -2.95],'color',[0.3,0.3,0]);p2.Color(4) = 0.2; p2(1).LineWidth =n(17);
hold off
%%
% yh(5,3,-pi/2,pi/2,1,[0,0,1],5);% no3-no2
% yh(3,5,pi/2,3*pi/2,1,[1,0.5,0.5],5);%no2-no3 
% 
% yh(2,5,pi/2,3*pi/2,1.5,[1,0.5,0.5],5);%no-no3
% 
% yh(2,3,-pi/2,pi/2,0.5,[0,0,1],5);% no2-no
%     yh(3,2,pi/2,3*pi/2,0.5,[1,0.5,0.5],5);%no-no2
% 
%     yh(1.5,0.5,0,pi/2,1,[0,0,1],3);% no-n2o
% 
%     yh(-1.9,1.1,pi/2,1.07*pi,2.5,[1,0.5,0.5],7);%no-no2
% 
%     yh(0,1,-pi/2,0,1,[0,0,1],5);% n2o-n2
% yh(0,1,pi/2,3*pi/2,1,[1,0.5,0.5],9);%n2-no
% 
% yh(0,0,-pi/2,pi/2,3,[0,0,1],5);% no3-no2
% 
% yh(0,-1.5,-pi/2,pi/2,1.5,[0,0,1],5);% no3-no2
% 
% 
% yh(0,-0.5,1.07*pi,1.5*pi,2.5,[1,0.5,0.5],14);%no-no2



axis equal
%hold off
function yh(x0,y0,theta1,theta2,r,k,w)

the=theta1:pi/180:theta2;
% x0=0;
% y0=(a+b)/2;

x=x0+r*cos(the);
y=y0+r*sin(the);
x1=x0+r*cos(theta1);%起点终点
y1=y0+r*sin(theta1);
x2=x0+r*cos(theta2);
y2=y0+r*sin(theta2);
p=plot(x,y,'color',k);
p(1).LineWidth = w;

p.Color(4) = 0.5; 
end

end