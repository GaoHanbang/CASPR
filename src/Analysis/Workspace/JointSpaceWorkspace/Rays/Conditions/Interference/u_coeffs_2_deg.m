function u_c = u_coeffs_2_deg(in1,in2,u0)
%U_COEFFS_2_DEG
%    U_C = U_COEFFS_2_DEG(IN1,IN2,U0)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    14-Oct-2020 11:25:33

u11 = in2(:,1);
u12 = in2(:,2);
u13 = in2(:,3);
u21 = in1(:,1);
u22 = in1(:,2);
u23 = in1(:,3);
u24 = in1(:,4);
u25 = in1(:,5);
u_c = [u0.*u21.*-4.0+u11.^2,u0.*u22.*-4.0+u11.*u12.*2.0,u0.*u23.*-4.0+u11.*u13.*2.0+u12.^2,u0.*u24.*-4.0+u12.*u13.*2.0,u0.*u25.*-4.0+u13.^2];
