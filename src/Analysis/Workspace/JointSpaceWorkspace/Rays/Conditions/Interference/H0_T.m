function out1 = H0_T(in1,in2,in3)
%H0_T
%    OUT1 = H0_T(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    14-Oct-2020 11:03:13

A1 = in2(1,:);
A2 = in2(2,:);
A3 = in2(3,:);
c1 = in3(1,:);
c2 = in3(2,:);
c3 = in3(3,:);
c4 = in3(4,:);
c5 = in3(5,:);
c6 = in3(6,:);
c7 = in3(7,:);
c8 = in3(8,:);
c9 = in3(9,:);
c10 = in3(10,:);
c11 = in3(11,:);
c12 = in3(12,:);
c13 = in3(13,:);
c14 = in3(14,:);
c15 = in3(15,:);
c16 = in3(16,:);
c17 = in3(17,:);
c18 = in3(18,:);
c19 = in3(19,:);
c20 = in3(20,:);
c21 = in3(21,:);
c22 = in3(22,:);
c23 = in3(23,:);
c24 = in3(24,:);
c25 = in3(25,:);
c26 = in3(26,:);
c27 = in3(27,:);
c28 = in3(28,:);
c29 = in3(29,:);
c30 = in3(30,:);
c31 = in3(31,:);
t2 = A1.^2;
t3 = A1.^3;
t4 = A2.^2;
t5 = A2.^3;
t6 = A3.^2;
t7 = A3.^3;
out1 = c31+A1.*c28+A2.*c29+A3.*c30+c13.*t3+c14.*t5+c15.*t7+c22.*t2+c23.*t4+c24.*t6+c1.*t2.^2+c2.*t4.^2+c3.*t6.^2+A1.*A2.*c25+A1.*A3.*c26+A2.*A3.*c27+A2.*c4.*t3+A3.*c5.*t3+A1.*c6.*t5+A3.*c7.*t5+A1.*c8.*t7+A2.*c9.*t7+A2.*c16.*t2+A3.*c17.*t2+A1.*c18.*t4+A3.*c19.*t4+A1.*c20.*t6+A2.*c21.*t6+c10.*t2.*t4+c11.*t2.*t6+c12.*t4.*t6;
