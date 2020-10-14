function t_c = s_coeffs_O(in1,in2)
%S_COEFFS
%    T_C = S_COEFFS(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    14-Oct-2020 12:38:00

b11 = in1(1);
b12 = in1(4);
b13 = in1(7);
b21 = in1(2);
b22 = in1(5);
b23 = in1(8);
b31 = in1(3);
b32 = in1(6);
b33 = in1(9);
c1 = in2(1,:);
c2 = in2(2,:);
c3 = in2(3,:);
c4 = in2(4,:);
c5 = in2(5,:);
c6 = in2(6,:);
c7 = in2(7,:);
c8 = in2(8,:);
c9 = in2(9,:);
c10 = in2(10,:);
c11 = in2(11,:);
c12 = in2(12,:);
c13 = in2(13,:);
c14 = in2(14,:);
c15 = in2(15,:);
c16 = in2(16,:);
c17 = in2(17,:);
c18 = in2(18,:);
c19 = in2(19,:);
c20 = in2(20,:);
c21 = in2(21,:);
c22 = in2(22,:);
c23 = in2(23,:);
c24 = in2(24,:);
c25 = in2(25,:);
c26 = in2(26,:);
c27 = in2(27,:);
c28 = in2(28,:);
c29 = in2(29,:);
c30 = in2(30,:);
c31 = in2(31,:);
t2 = b11.*c28;
t3 = b12.*c28;
t4 = b13.*c28;
t5 = b21.*c29;
t6 = b22.*c29;
t7 = b23.*c29;
t8 = b31.*c30;
t9 = b32.*c30;
t10 = b33.*c30;
t11 = b11.^2;
t12 = b11.^3;
t13 = b12.^2;
t14 = b12.^3;
t15 = b13.^2;
t16 = b13.^3;
t17 = b21.^2;
t18 = b21.^3;
t19 = b22.^2;
t20 = b22.^3;
t21 = b23.^2;
t22 = b23.^3;
t23 = b31.^2;
t24 = b31.^3;
t25 = b32.^2;
t26 = b32.^3;
t27 = b33.^2;
t28 = b33.^3;
t29 = c31.*4.0;
t39 = b11.*b21.*c25;
t40 = b11.*b22.*c25;
t41 = b12.*b21.*c25;
t42 = b11.*b23.*c25;
t43 = b12.*b22.*c25;
t44 = b13.*b21.*c25;
t45 = b12.*b23.*c25;
t46 = b13.*b22.*c25;
t47 = b13.*b23.*c25;
t48 = b11.*b31.*c26;
t49 = b11.*b32.*c26;
t50 = b12.*b31.*c26;
t51 = b11.*b33.*c26;
t52 = b12.*b32.*c26;
t53 = b13.*b31.*c26;
t54 = b12.*b33.*c26;
t55 = b13.*b32.*c26;
t56 = b13.*b33.*c26;
t57 = b21.*b31.*c27;
t58 = b21.*b32.*c27;
t59 = b22.*b31.*c27;
t60 = b21.*b33.*c27;
t61 = b22.*b32.*c27;
t62 = b23.*b31.*c27;
t63 = b22.*b33.*c27;
t64 = b23.*b32.*c27;
t65 = b23.*b33.*c27;
t84 = b11.*b12.*c22.*2.0;
t85 = b11.*b13.*c22.*2.0;
t86 = b12.*b13.*c22.*2.0;
t87 = b21.*b22.*c23.*2.0;
t88 = b21.*b23.*c23.*2.0;
t89 = b22.*b23.*c23.*2.0;
t90 = b31.*b32.*c24.*2.0;
t91 = b31.*b33.*c24.*2.0;
t92 = b32.*b33.*c24.*2.0;
t147 = b11.*b12.*b13.*c13.*6.0;
t148 = b11.*b12.*b21.*c16.*2.0;
t149 = b11.*b12.*b22.*c16.*2.0;
t150 = b11.*b13.*b21.*c16.*2.0;
t151 = b11.*b12.*b23.*c16.*2.0;
t152 = b11.*b13.*b22.*c16.*2.0;
t153 = b12.*b13.*b21.*c16.*2.0;
t154 = b11.*b13.*b23.*c16.*2.0;
t155 = b12.*b13.*b22.*c16.*2.0;
t156 = b12.*b13.*b23.*c16.*2.0;
t157 = b11.*b12.*b31.*c17.*2.0;
t158 = b11.*b12.*b32.*c17.*2.0;
t159 = b11.*b13.*b31.*c17.*2.0;
t160 = b11.*b21.*b22.*c18.*2.0;
t161 = b11.*b12.*b33.*c17.*2.0;
t162 = b11.*b13.*b32.*c17.*2.0;
t163 = b11.*b21.*b23.*c18.*2.0;
t164 = b12.*b13.*b31.*c17.*2.0;
t165 = b12.*b21.*b22.*c18.*2.0;
t166 = b11.*b13.*b33.*c17.*2.0;
t167 = b11.*b22.*b23.*c18.*2.0;
t168 = b12.*b13.*b32.*c17.*2.0;
t169 = b12.*b21.*b23.*c18.*2.0;
t170 = b13.*b21.*b22.*c18.*2.0;
t171 = b12.*b13.*b33.*c17.*2.0;
t172 = b12.*b22.*b23.*c18.*2.0;
t173 = b13.*b21.*b23.*c18.*2.0;
t174 = b13.*b22.*b23.*c18.*2.0;
t175 = b21.*b22.*b23.*c14.*6.0;
t176 = b21.*b22.*b31.*c19.*2.0;
t177 = b11.*b31.*b32.*c20.*2.0;
t178 = b21.*b22.*b32.*c19.*2.0;
t179 = b21.*b23.*b31.*c19.*2.0;
t180 = b11.*b31.*b33.*c20.*2.0;
t181 = b12.*b31.*b32.*c20.*2.0;
t182 = b21.*b22.*b33.*c19.*2.0;
t183 = b21.*b23.*b32.*c19.*2.0;
t184 = b22.*b23.*b31.*c19.*2.0;
t185 = b11.*b32.*b33.*c20.*2.0;
t186 = b12.*b31.*b33.*c20.*2.0;
t187 = b13.*b31.*b32.*c20.*2.0;
t188 = b21.*b23.*b33.*c19.*2.0;
t189 = b22.*b23.*b32.*c19.*2.0;
t190 = b12.*b32.*b33.*c20.*2.0;
t191 = b13.*b31.*b33.*c20.*2.0;
t192 = b22.*b23.*b33.*c19.*2.0;
t193 = b13.*b32.*b33.*c20.*2.0;
t194 = b21.*b31.*b32.*c21.*2.0;
t195 = b21.*b31.*b33.*c21.*2.0;
t196 = b22.*b31.*b32.*c21.*2.0;
t197 = b21.*b32.*b33.*c21.*2.0;
t198 = b22.*b31.*b33.*c21.*2.0;
t199 = b23.*b31.*b32.*c21.*2.0;
t200 = b22.*b32.*b33.*c21.*2.0;
t201 = b23.*b31.*b33.*c21.*2.0;
t202 = b23.*b32.*b33.*c21.*2.0;
t203 = b31.*b32.*b33.*c15.*6.0;
t30 = t2.*3.0;
t31 = t3.*3.0;
t32 = t4.*3.0;
t33 = t5.*3.0;
t34 = t6.*3.0;
t35 = t7.*3.0;
t36 = t8.*3.0;
t37 = t9.*3.0;
t38 = t10.*3.0;
t66 = c13.*t12;
t67 = c13.*t14;
t68 = c13.*t16;
t69 = c22.*t11;
t70 = c22.*t13;
t71 = c22.*t15;
t72 = c14.*t18;
t73 = c14.*t20;
t74 = c14.*t22;
t75 = c23.*t17;
t76 = c23.*t19;
t77 = c23.*t21;
t78 = c15.*t24;
t79 = c15.*t26;
t80 = c15.*t28;
t81 = c24.*t23;
t82 = c24.*t25;
t83 = c24.*t27;
t93 = b21.*c16.*t11;
t94 = b22.*c16.*t11;
t95 = b21.*c16.*t13;
t96 = b11.*c18.*t17;
t97 = b23.*c16.*t11;
t98 = b22.*c16.*t13;
t99 = b21.*c16.*t15;
t100 = b11.*c18.*t19;
t101 = b12.*c18.*t17;
t102 = b23.*c16.*t13;
t103 = b22.*c16.*t15;
t104 = b11.*c18.*t21;
t105 = b12.*c18.*t19;
t106 = b13.*c18.*t17;
t107 = b23.*c16.*t15;
t108 = b12.*c18.*t21;
t109 = b13.*c18.*t19;
t110 = b13.*c18.*t21;
t111 = b31.*c17.*t11;
t112 = b32.*c17.*t11;
t113 = b31.*c17.*t13;
t114 = b33.*c17.*t11;
t115 = b32.*c17.*t13;
t116 = b31.*c17.*t15;
t117 = b11.*c20.*t23;
t118 = b33.*c17.*t13;
t119 = b32.*c17.*t15;
t120 = b11.*c20.*t25;
t121 = b12.*c20.*t23;
t122 = b33.*c17.*t15;
t123 = b11.*c20.*t27;
t124 = b12.*c20.*t25;
t125 = b13.*c20.*t23;
t126 = b12.*c20.*t27;
t127 = b13.*c20.*t25;
t128 = b13.*c20.*t27;
t129 = b31.*c19.*t17;
t130 = b32.*c19.*t17;
t131 = b31.*c19.*t19;
t132 = b21.*c21.*t23;
t133 = b33.*c19.*t17;
t134 = b32.*c19.*t19;
t135 = b31.*c19.*t21;
t136 = b21.*c21.*t25;
t137 = b22.*c21.*t23;
t138 = b33.*c19.*t19;
t139 = b32.*c19.*t21;
t140 = b21.*c21.*t27;
t141 = b22.*c21.*t25;
t142 = b23.*c21.*t23;
t143 = b33.*c19.*t21;
t144 = b22.*c21.*t27;
t145 = b23.*c21.*t25;
t146 = b23.*c21.*t27;
t204 = b11.*c13.*t13.*3.0;
t205 = b12.*c13.*t11.*3.0;
t206 = b11.*c13.*t15.*3.0;
t207 = b13.*c13.*t11.*3.0;
t208 = b12.*c13.*t15.*3.0;
t209 = b13.*c13.*t13.*3.0;
t210 = b21.*c14.*t19.*3.0;
t211 = b22.*c14.*t17.*3.0;
t212 = b21.*c14.*t21.*3.0;
t213 = b23.*c14.*t17.*3.0;
t214 = b22.*c14.*t21.*3.0;
t215 = b23.*c14.*t19.*3.0;
t216 = b31.*c15.*t25.*3.0;
t217 = b32.*c15.*t23.*3.0;
t218 = b31.*c15.*t27.*3.0;
t219 = b33.*c15.*t23.*3.0;
t220 = b32.*c15.*t27.*3.0;
t221 = b33.*c15.*t25.*3.0;
t_c = [c31+t2+t5+t8+t39+t48+t57+t66+t69+t72+t75+t78+t81+t93+t96+t111+t117+t129+t132+c1.*t11.^2+c2.*t17.^2+c3.*t23.^2+b11.*c6.*t18+b21.*c4.*t12+b11.*c8.*t24+b31.*c5.*t12+b21.*c9.*t24+b31.*c7.*t18+c10.*t11.*t17+c11.*t11.*t23+c12.*t17.*t23,t3+t6+t9+t40+t41+t49+t50+t58+t59+t84+t87+t90+t94+t101+t112+t121+t130+t137+t148+t157+t160+t176+t177+t194+t205+t211+t217+b12.*c1.*t12.*4.0+b12.*c6.*t18+b22.*c4.*t12+b22.*c2.*t18.*4.0+b12.*c8.*t24+b32.*c5.*t12+b22.*c9.*t24+b32.*c7.*t18+b32.*c3.*t24.*4.0+b12.*b21.*c4.*t11.*3.0+b11.*b12.*c10.*t17.*2.0+b11.*b22.*c6.*t17.*3.0+b11.*b12.*c11.*t23.*2.0+b12.*b31.*c5.*t11.*3.0+b21.*b22.*c10.*t11.*2.0+b11.*b32.*c8.*t23.*3.0+b22.*b31.*c7.*t17.*3.0+b21.*b22.*c12.*t23.*2.0+b21.*b32.*c9.*t23.*3.0+b31.*b32.*c11.*t11.*2.0+b31.*b32.*c12.*t17.*2.0,t4+t7+t10+t29+t30+t33+t36+t39.*2.0+t42+t43+t44+t48.*2.0+t51+t52+t53+t57.*2.0+t60+t61+t62+t66+t69.*2.0+t70+t72+t75.*2.0+t76+t78+t81.*2.0+t82+t85+t88+t91+t93+t95+t96+t97+t100+t106+t111+t113+t114+t117+t120+t125+t129+t131+t132+t133+t136+t142+t149+t150+t158+t159+t163+t165+t178+t179+t180+t181+t195+t196+t204+t207+t210+t213+t216+t219+b13.*c1.*t12.*4.0+b13.*c6.*t18+b23.*c4.*t12+b23.*c2.*t18.*4.0+b13.*c8.*t24+b33.*c5.*t12+b23.*c9.*t24+b33.*c7.*t18+b33.*c3.*t24.*4.0+c1.*t11.*t13.*6.0+c2.*t17.*t19.*6.0+c10.*t11.*t19+c10.*t13.*t17+c11.*t11.*t25+c11.*t13.*t23+c3.*t23.*t25.*6.0+c12.*t17.*t25+c12.*t19.*t23+b11.*b21.*c4.*t13.*3.0+b12.*b22.*c4.*t11.*3.0+b13.*b21.*c4.*t11.*3.0+b11.*b13.*c10.*t17.*2.0+b11.*b21.*c6.*t19.*3.0+b11.*b23.*c6.*t17.*3.0+b12.*b22.*c6.*t17.*3.0+b11.*b13.*c11.*t23.*2.0+b11.*b31.*c5.*t13.*3.0+b12.*b32.*c5.*t11.*3.0+b13.*b31.*c5.*t11.*3.0+b21.*b23.*c10.*t11.*2.0+b11.*b31.*c8.*t25.*3.0+b11.*b33.*c8.*t23.*3.0+b12.*b32.*c8.*t23.*3.0+b21.*b31.*c7.*t19.*3.0+b22.*b32.*c7.*t17.*3.0+b23.*b31.*c7.*t17.*3.0+b21.*b23.*c12.*t23.*2.0+b21.*b31.*c9.*t25.*3.0+b21.*b33.*c9.*t23.*3.0+b22.*b32.*c9.*t23.*3.0+b31.*b33.*c11.*t11.*2.0+b31.*b33.*c12.*t17.*2.0+b11.*b12.*b21.*b22.*c10.*4.0+b11.*b12.*b31.*b32.*c11.*4.0+b21.*b22.*b31.*b32.*c12.*4.0,t31+t34+t37+t40.*2.0+t41.*2.0+t45+t46+t49.*2.0+t50.*2.0+t54+t55+t58.*2.0+t59.*2.0+t63+t64+t67+t73+t79+t86+t89+t92+t94+t98+t101+t105+t112+t115+t121+t124+t130+t134+t137+t141+t147+t148+t151+t152+t153+t157+t160+t161+t162+t164+t167+t169+t170+t175+t176+t177+t182+t183+t184+t185+t186+t187+t194+t197+t198+t199+t203+t205+t211+t217+b11.*b12.*c22.*4.0+b21.*b22.*c23.*4.0+b31.*b32.*c24.*4.0+b11.*c1.*t14.*4.0+b11.*c6.*t20+b21.*c4.*t14+b21.*c2.*t20.*4.0+b11.*c8.*t26+b31.*c5.*t14+b21.*c9.*t26+b31.*c7.*t20+b31.*c3.*t26.*4.0+b12.*b13.*c1.*t11.*1.2e+1+b11.*b22.*c4.*t13.*3.0+b12.*b23.*c4.*t11.*3.0+b13.*b22.*c4.*t11.*3.0+b11.*b12.*c10.*t19.*2.0+b12.*b13.*c10.*t17.*2.0+b12.*b21.*c6.*t19.*3.0+b12.*b23.*c6.*t17.*3.0+b13.*b22.*c6.*t17.*3.0+b11.*b12.*c11.*t25.*2.0+b12.*b13.*c11.*t23.*2.0+b11.*b32.*c5.*t13.*3.0+b12.*b33.*c5.*t11.*3.0+b13.*b32.*c5.*t11.*3.0+b22.*b23.*c2.*t17.*1.2e+1+b21.*b22.*c10.*t13.*2.0+b22.*b23.*c10.*t11.*2.0+b12.*b31.*c8.*t25.*3.0+b12.*b33.*c8.*t23.*3.0+b13.*b32.*c8.*t23.*3.0+b21.*b32.*c7.*t19.*3.0+b22.*b33.*c7.*t17.*3.0+b23.*b32.*c7.*t17.*3.0+b21.*b22.*c12.*t25.*2.0+b22.*b23.*c12.*t23.*2.0+b22.*b31.*c9.*t25.*3.0+b22.*b33.*c9.*t23.*3.0+b23.*b32.*c9.*t23.*3.0+b31.*b32.*c11.*t13.*2.0+b32.*b33.*c11.*t11.*2.0+b32.*b33.*c3.*t23.*1.2e+1+b31.*b32.*c12.*t19.*2.0+b32.*b33.*c12.*t17.*2.0+b11.*b12.*b13.*b21.*c4.*6.0+b11.*b12.*b13.*b31.*c5.*6.0+b11.*b12.*b21.*b23.*c10.*4.0+b11.*b13.*b21.*b22.*c10.*4.0+b11.*b21.*b22.*b23.*c6.*6.0+b11.*b12.*b31.*b33.*c11.*4.0+b11.*b13.*b31.*b32.*c11.*4.0+b21.*b22.*b23.*b31.*c7.*6.0+b11.*b31.*b32.*b33.*c8.*6.0+b21.*b22.*b31.*b33.*c12.*4.0+b21.*b23.*b31.*b32.*c12.*4.0+b21.*b31.*b32.*b33.*c9.*6.0,c31.*6.0+t30+t32+t33+t35+t36+t38+t39+t42.*2.0+t43.*2.0+t44.*2.0+t47+t48+t51.*2.0+t52.*2.0+t53.*2.0+t56+t57+t60.*2.0+t61.*2.0+t62.*2.0+t65+t69+t70.*2.0+t71+t75+t76.*2.0+t77+t81+t82.*2.0+t83+t95+t97+t99+t100+t102+t104+t106+t109+t113+t114+t116+t118+t120+t123+t125+t127+t131+t133+t135+t136+t138+t140+t142+t145+t149+t150+t154+t155+t158+t159+t163+t165+t166+t168+t172+t173+t178+t179+t180+t181+t188+t189+t190+t191+t195+t196+t200+t201+t204+t206+t207+t209+t210+t212+t213+t215+t216+t218+t219+t221+c1.*t13.^2+c2.*t19.^2+c3.*t25.^2+b11.*b13.*c22.*4.0+b21.*b23.*c23.*4.0+b31.*b33.*c24.*4.0+b12.*c6.*t20+b22.*c4.*t14+b12.*c8.*t26+b32.*c5.*t14+b22.*c9.*t26+b32.*c7.*t20+c1.*t11.*t15.*6.0+c2.*t17.*t21.*6.0+c10.*t11.*t21+c10.*t13.*t19+c10.*t15.*t17+c11.*t11.*t27+c11.*t13.*t25+c11.*t15.*t23+c3.*t23.*t27.*6.0+c12.*t17.*t27+c12.*t19.*t25+c12.*t21.*t23+b11.*b13.*c1.*t13.*1.2e+1+b11.*b21.*c4.*t15.*3.0+b11.*b23.*c4.*t13.*3.0+b13.*b21.*c4.*t13.*3.0+b13.*b23.*c4.*t11.*3.0+b11.*b13.*c10.*t19.*2.0+b11.*b21.*c6.*t21.*3.0+b11.*b23.*c6.*t19.*3.0+b13.*b21.*c6.*t19.*3.0+b13.*b23.*c6.*t17.*3.0+b11.*b13.*c11.*t25.*2.0+b11.*b31.*c5.*t15.*3.0+b11.*b33.*c5.*t13.*3.0+b13.*b31.*c5.*t13.*3.0+b13.*b33.*c5.*t11.*3.0+b21.*b23.*c2.*t19.*1.2e+1+b21.*b23.*c10.*t13.*2.0+b11.*b31.*c8.*t27.*3.0+b11.*b33.*c8.*t25.*3.0+b13.*b31.*c8.*t25.*3.0+b13.*b33.*c8.*t23.*3.0+b21.*b31.*c7.*t21.*3.0+b21.*b33.*c7.*t19.*3.0+b23.*b31.*c7.*t19.*3.0+b23.*b33.*c7.*t17.*3.0+b21.*b23.*c12.*t25.*2.0+b21.*b31.*c9.*t27.*3.0+b21.*b33.*c9.*t25.*3.0+b23.*b31.*c9.*t25.*3.0+b23.*b33.*c9.*t23.*3.0+b31.*b33.*c11.*t13.*2.0+b31.*b33.*c3.*t25.*1.2e+1+b31.*b33.*c12.*t19.*2.0+b11.*b12.*b13.*b22.*c4.*6.0+b11.*b12.*b13.*b32.*c5.*6.0+b11.*b12.*b22.*b23.*c10.*4.0+b11.*b13.*b21.*b23.*c10.*4.0+b12.*b13.*b21.*b22.*c10.*4.0+b12.*b21.*b22.*b23.*c6.*6.0+b11.*b12.*b32.*b33.*c11.*4.0+b11.*b13.*b31.*b33.*c11.*4.0+b12.*b13.*b31.*b32.*c11.*4.0+b21.*b22.*b23.*b32.*c7.*6.0+b12.*b31.*b32.*b33.*c8.*6.0+b21.*b22.*b32.*b33.*c12.*4.0+b21.*b23.*b31.*b33.*c12.*4.0+b22.*b23.*b31.*b32.*c12.*4.0+b22.*b31.*b32.*b33.*c9.*6.0,t31+t34+t37+t40+t41+t45.*2.0+t46.*2.0+t49+t50+t54.*2.0+t55.*2.0+t58+t59+t63.*2.0+t64.*2.0+t67+t73+t79+t84+t87+t90+t98+t103+t105+t108+t115+t119+t124+t126+t134+t139+t141+t144+t147+t151+t152+t153+t156+t161+t162+t164+t167+t169+t170+t171+t174+t175+t182+t183+t184+t185+t186+t187+t192+t193+t197+t198+t199+t202+t203+t208+t214+t220+b12.*b13.*c22.*4.0+b22.*b23.*c23.*4.0+b32.*b33.*c24.*4.0+b13.*c1.*t14.*4.0+b13.*c6.*t20+b23.*c4.*t14+b23.*c2.*t20.*4.0+b13.*c8.*t26+b33.*c5.*t14+b23.*c9.*t26+b33.*c7.*t20+b33.*c3.*t26.*4.0+b11.*b12.*c1.*t15.*1.2e+1+b11.*b22.*c4.*t15.*3.0+b12.*b21.*c4.*t15.*3.0+b13.*b22.*c4.*t13.*3.0+b11.*b12.*c10.*t21.*2.0+b12.*b13.*c10.*t19.*2.0+b11.*b22.*c6.*t21.*3.0+b12.*b21.*c6.*t21.*3.0+b12.*b23.*c6.*t19.*3.0+b11.*b12.*c11.*t27.*2.0+b12.*b13.*c11.*t25.*2.0+b11.*b32.*c5.*t15.*3.0+b12.*b31.*c5.*t15.*3.0+b13.*b32.*c5.*t13.*3.0+b21.*b22.*c2.*t21.*1.2e+1+b21.*b22.*c10.*t15.*2.0+b22.*b23.*c10.*t13.*2.0+b11.*b32.*c8.*t27.*3.0+b12.*b31.*c8.*t27.*3.0+b12.*b33.*c8.*t25.*3.0+b21.*b32.*c7.*t21.*3.0+b22.*b31.*c7.*t21.*3.0+b23.*b32.*c7.*t19.*3.0+b21.*b22.*c12.*t27.*2.0+b22.*b23.*c12.*t25.*2.0+b21.*b32.*c9.*t27.*3.0+b22.*b31.*c9.*t27.*3.0+b22.*b33.*c9.*t25.*3.0+b31.*b32.*c11.*t15.*2.0+b32.*b33.*c11.*t13.*2.0+b31.*b32.*c3.*t27.*1.2e+1+b31.*b32.*c12.*t21.*2.0+b32.*b33.*c12.*t19.*2.0+b11.*b12.*b13.*b23.*c4.*6.0+b11.*b12.*b13.*b33.*c5.*6.0+b11.*b13.*b22.*b23.*c10.*4.0+b12.*b13.*b21.*b23.*c10.*4.0+b13.*b21.*b22.*b23.*c6.*6.0+b11.*b13.*b32.*b33.*c11.*4.0+b12.*b13.*b31.*b33.*c11.*4.0+b21.*b22.*b23.*b33.*c7.*6.0+b13.*b31.*b32.*b33.*c8.*6.0+b21.*b23.*b32.*b33.*c12.*4.0+b22.*b23.*b31.*b33.*c12.*4.0+b23.*b31.*b32.*b33.*c9.*6.0,t2+t5+t8+t29+t32+t35+t38+t42+t43+t44+t47.*2.0+t51+t52+t53+t56.*2.0+t60+t61+t62+t65.*2.0+t68+t70+t71.*2.0+t74+t76+t77.*2.0+t80+t82+t83.*2.0+t85+t88+t91+t99+t102+t104+t107+t109+t110+t116+t118+t122+t123+t127+t128+t135+t138+t140+t143+t145+t146+t154+t155+t166+t168+t172+t173+t188+t189+t190+t191+t200+t201+t206+t209+t212+t215+t218+t221+b11.*c1.*t16.*4.0+b11.*c6.*t22+b21.*c4.*t16+b21.*c2.*t22.*4.0+b11.*c8.*t28+b31.*c5.*t16+b21.*c9.*t28+b31.*c7.*t22+b31.*c3.*t28.*4.0+c1.*t13.*t15.*6.0+c2.*t19.*t21.*6.0+c10.*t13.*t21+c10.*t15.*t19+c11.*t13.*t27+c11.*t15.*t25+c3.*t25.*t27.*6.0+c12.*t19.*t27+c12.*t21.*t25+b11.*b23.*c4.*t15.*3.0+b12.*b22.*c4.*t15.*3.0+b13.*b23.*c4.*t13.*3.0+b11.*b13.*c10.*t21.*2.0+b12.*b22.*c6.*t21.*3.0+b13.*b21.*c6.*t21.*3.0+b13.*b23.*c6.*t19.*3.0+b11.*b13.*c11.*t27.*2.0+b11.*b33.*c5.*t15.*3.0+b12.*b32.*c5.*t15.*3.0+b13.*b33.*c5.*t13.*3.0+b21.*b23.*c10.*t15.*2.0+b12.*b32.*c8.*t27.*3.0+b13.*b31.*c8.*t27.*3.0+b13.*b33.*c8.*t25.*3.0+b21.*b33.*c7.*t21.*3.0+b22.*b32.*c7.*t21.*3.0+b23.*b33.*c7.*t19.*3.0+b21.*b23.*c12.*t27.*2.0+b22.*b32.*c9.*t27.*3.0+b23.*b31.*c9.*t27.*3.0+b23.*b33.*c9.*t25.*3.0+b31.*b33.*c11.*t15.*2.0+b31.*b33.*c12.*t21.*2.0+b12.*b13.*b22.*b23.*c10.*4.0+b12.*b13.*b32.*b33.*c11.*4.0+b22.*b23.*b32.*b33.*c12.*4.0,t3+t6+t9+t45+t46+t54+t55+t63+t64+t86+t89+t92+t103+t108+t119+t126+t139+t144+t156+t171+t174+t192+t193+t202+t208+t214+t220+b12.*c1.*t16.*4.0+b12.*c6.*t22+b22.*c4.*t16+b22.*c2.*t22.*4.0+b12.*c8.*t28+b32.*c5.*t16+b22.*c9.*t28+b32.*c7.*t22+b32.*c3.*t28.*4.0+b12.*b23.*c4.*t15.*3.0+b12.*b13.*c10.*t21.*2.0+b13.*b22.*c6.*t21.*3.0+b12.*b13.*c11.*t27.*2.0+b12.*b33.*c5.*t15.*3.0+b22.*b23.*c10.*t15.*2.0+b13.*b32.*c8.*t27.*3.0+b22.*b33.*c7.*t21.*3.0+b22.*b23.*c12.*t27.*2.0+b23.*b32.*c9.*t27.*3.0+b32.*b33.*c11.*t15.*2.0+b32.*b33.*c12.*t21.*2.0,c31+t4+t7+t10+t47+t56+t65+t68+t71+t74+t77+t80+t83+t107+t110+t122+t128+t143+t146+c1.*t15.^2+c2.*t21.^2+c3.*t27.^2+b13.*c6.*t22+b23.*c4.*t16+b13.*c8.*t28+b33.*c5.*t16+b23.*c9.*t28+b33.*c7.*t22+c10.*t15.*t21+c11.*t15.*t27+c12.*t21.*t27];
