#include "maps.h"
#ifdef MAP_oldcrat2
void() map_oldcrat2 = //02-01-2006 by Trinca
{
N('149 -125 152');N('176 32 152');N('93 160 152');N('-113 132 152');N('-166 2 152');N('-109 -120 152');
LSQ();
Z1(m13);Z1(m12);Z1(m11);Z1(m10);Z1(m9);Z1(m8);Z2(m7);Z2(m6);Z1(m5);Z2(m4);
Z1(m3);Z2(m2);Z1(m1);
m13.P0=m5;m13.P1=m12;m13.P2=m1;m12.P0=m13;m12.P1=m11;m12.P2=m1;m11.P0=m12;m11.P1=m3;m11.P2=m1;m10.P0=m3;m10.P1=m9;m10.P2=m1;
m9.P0=m10;m9.P1=m8;m9.P2=m1;m8.P0=m5;m8.P1=m9;m8.P2=m1;m5.P0=m8;m5.P1=m13;m5.P2=m1;m3.P0=m11;m3.P1=m10;m3.P2=m1;
m1.P0=m8;m1.P1=m5;m1.P2=m13;m1.P3=m12;m1.P4=m11;m1.P5=m3;m1.P6=m10;m1.P7=m9;
};
#endif