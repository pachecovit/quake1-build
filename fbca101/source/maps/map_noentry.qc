#include "maps.h"
#ifdef MAP_noentry
void() map_noentry = //by Trinca
{
N('7 195 24');N('4 35 24');N('172 -110 24');N('-174 -125 24');N('-5 -447 24');N('-1 -268 24');N('-316 -453 88');N('-158 -459 56');N('-320 -291 152');N('-317 -148 152');
N('-326 214 88');N('-176 195 56');N('-331 19 152');N('146 -455 56');N('314 -461 88');N('309 -251 152');N('314 -126 152');N('325 9 152');N('334 194 88');N('178 198 72');
LSQ();
Z3(m26);Z3(m25);Z3(m24);Z3(m23);Z3(m22);Z3(m21);Z3(m20);Z2(m19);Z2(m18);Z2(m17);
Z2(m16);Z2(m15);Z2(m14);Z2(m13);Z1(m12);Z1(m11);Z1(m10);Z1(m9);Z1(m8);Z1(m7);
Z1(m5);Z1(m4);Z1(m3);Z1(m2);Z1(m1);
G1(m2);
m26.P0=m25;m26.P1=m7;m26.P2=m4;m25.P0=m24;m25.P1=m26;m24.P0=m23;m24.P1=m25;m24.P2=m2;m23.P0=m22;m23.P1=m24;m23.P2=m9;
m22.P0=m21;m22.P1=m23;m22.P2=m2;m21.P0=m20;m21.P1=m22;m20.P0=m11;m20.P1=m21;m19.P0=m17;m19.P1=m16;m19.P2=m2;
m18.P0=m7;m18.P1=m17;m17.P0=m18;m17.P1=m19;m16.P0=m19;m16.P1=m15;m16.P2=m2;m15.P0=m16;m15.P1=m13;m15.P2=m2;
m14.P0=m13;m14.P1=m11;m13.P0=m15;m13.P1=m14;m12.P0=m5;m12.P1=m9;m12.P2=m2;m12.P3=m11;m12.P4=m1;m12.P5=m10;
m11.P0=m12;m11.P1=m14;m11.P2=m20;m10.P0=m2;m10.P1=m3;m10.P2=m8;m10.P3=m1;m10.P4=m12;m9.P0=m4;m9.P1=m8;m9.P2=m2;m9.P3=m5;m9.P4=m12;
m8.P0=m7;m8.P1=m4;m8.P2=m9;m8.P3=m2;m8.P4=m10;m8.P5=m3;m7.P0=m8;m7.P1=m18;m7.P2=m26;m5.P0=m9;m5.P1=m12;
m4.P0=m8;m4.P1=m9;m4.P2=m26;m3.P0=m10;m3.P1=m8;m2.P0=m9;m2.P1=m12;m2.P2=m10;m2.P3=m8;m1.P0=m12;m1.P1=m10;
m24.D2=1024;m22.D2=1024;m19.D2=1024;m15.D2=1024;
};
#endif