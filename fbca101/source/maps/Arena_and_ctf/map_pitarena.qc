#include "maps.h"
#ifdef MAP_pitarena
void() map_pitarena =
{
N('-111 -109 24');N('-104 -259 24');N('-139 -461 24');N('-95 -648 24');N('-83 -847 24');N('-296 -851 24');N('-455 -807 24');N('-613 -830 24');N('-860 -875 24');N('-826 -711 24');
N('-807 -519 24');N('-841 -321 24');N('-873 -97 24');N('-666 -121 24');N('-492 -145 24');N('-314 -109 24');N('-217 -491 56');N('-312 -491 104');N('-487 -478 136');N('-621 -481 120');
N('-694 -481 72');N('-471 -291 -24');N('-468 -473 -88');N('-600 -482 -88');N('-359 -473 -88');N('-475 -659 -30');
LSQ();
Z1(m33);Z1(m32);Z1(m31);Z1(m30);Z1(m29);Z6(m28);Z6(m27);Z6(m26);Z6(m25);Z6(m24);
Z2(m23);Z2(m22);Z2(m21);Z2(m20);Z3(m19);Z3(m18);Z3(m17);Z3(m16);Z4(m15);Z4(m14);
Z4(m13);Z4(m12);Z5(m11);Z5(m10);Z5(m9);Z5(m8);Z7(m5);Z7(m4);Z7(m3);Z7(m2);
Z7(m1);
m33.P0=m14;m33.P1=m30;m32.P0=m30;m31.P0=m30;m30.P0=m33;m30.P1=m31;m30.P2=m32;m30.P3=m29;m29.P0=m30;m29.P1=m22;
m28.P0=m18;m28.P1=m27;m27.P0=m28;m27.P1=m26;m26.P0=m27;m26.P1=m25;m25.P0=m26;m25.P1=m24;m24.P0=m25;m24.P1=m10;
m23.P0=m8;m23.P1=m22;m22.P0=m23;m22.P1=m21;m22.P2=m29;m21.P0=m22;m21.P1=m20;m20.P0=m21;m20.P1=m19;m19.P0=m20;m19.P1=m18;
m18.P0=m19;m18.P1=m17;m18.P2=m28;m17.P0=m18;m17.P1=m16;m16.P0=m17;m16.P1=m15;m15.P0=m16;m15.P1=m14;m14.P0=m15;m14.P1=m13;m14.P2=m33;
m13.P0=m14;m13.P1=m12;m12.P0=m13;m12.P1=m11;m11.P0=m12;m11.P1=m10;m10.P0=m11;m10.P1=m9;m10.P2=m24;m9.P0=m8;m9.P1=m10;
m8.P0=m9;m8.P1=m23;
};
#endif