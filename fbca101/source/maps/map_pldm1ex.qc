#include "maps.h"
#ifdef MAP_pldm1ex
void() map_pldm1ex = //01-01-2007 by Trinca
{
N('903 231 -112');N('952 -102 -104');N('917 52 -104');N('743 77 -104');N('581 92 -104');N('409 100 -104');N('209 114 -104');N('215 231 -104');N('222 375 -104');N('410 513 -104');
N('89 182 -104');N('-76 129 -104');N('-246 117 -104');N('-426 66 -104');N('-294 -196 -104');N('-572 -47 -104');N('-445 223 -40');N('-422 364 -40');N('-449 472 -40');N('-293 488 -40');
N('-105 710 40');N('69 703 88');N('-29 530 88');N('158 561 88');N('-272 76 88');N('-71 298 88');N('358 433 88');N('346 138 88');N('445 99 88');N('393 -29 88');
N('706 93 56');N('563 100 79');N('694 262 56');N('848 263 56');N('955 256 56');N('1065 118 24');N('1069 2 -40');
LSQ();
Z4(m77);Z4(m76);Z4(m75);Z4(m74);Z4(m73);Z4(m72);Z4(m71);Z3(m70);Z3(m69);Z3(m68);
Z3(m67);Z3(m66);Z3(m65);Z3(m64);Z3(m63);Z3(m62);Z3(m61);Z2(m60);Z2(m59);Z2(m58);
Z2(m57);Z2(m56);Z2(m55);Z2(m54);Z2(m53);Z2(m52);Z1(m51);Z1(m50);Z1(m49);Z1(m48);
Z1(m47);Z1(m46);Z1(m45);Z1(m44);Z1(m43);Z1(m42);Z1(m41);Z1(m4);Z2(m3);Z2(m40);
Z2(m39);Z2(m38);Z3(m37);Z3(m36);Z1(m35);Z1(m34);Z3(m33);Z1(m32);Z1(m31);Z4(m30);
Z2(m29);Z3(m28);Z3(m27);Z3(m26);Z2(m25);Z1(m24);Z4(m23);Z4(m22);Z1(m21);Z3(m20);
Z3(m19);Z2(m18);Z1(m17);Z2(m16);Z3(m15);Z2(m14);Z1(m13);Z4(m12);Z1(m11);Z1(m10);
Z5(m9);Z1(m8);Z2(m6);Z1(m5);Z2(m2);
G1(m40);G6(m30);G2(m29);G4(m24);G5(m21);G8(m20);G7(m19);G9(m18);G3(m10);G10(m9);
m77.P0=m21;m77.P1=m76;m76.P0=m77;m76.P1=m12;m75.P0=m12;m75.P1=m74;m74.P0=m43;m74.P1=m75;m74.P2=m73;m73.P0=m74;m73.P1=m71;
m72.P0=m71;m72.P1=m69;m71.P0=m42;m71.P1=m73;m71.P2=m72;m71.P3=m22;m70.P0=m68;m70.P1=m69;m70.P2=m36;m69.P0=m68;m69.P1=m70;m69.P2=m72;
m68.P0=m47;m68.P1=m51;m68.P2=m27;m68.P3=m69;m68.P4=m70;m67.P0=m15;m67.P1=m27;m66.P0=m33;m66.P1=m20;m65.P0=m20;m65.P1=m37;
m64.P0=m26;m64.P1=m62;m64.P2=m63;m64.P3=m15;m63.P0=m62;m63.P1=m64;m63.P2=m33;m62.P0=m61;m62.P1=m26;m62.P2=m64;m62.P3=m63;
m61.P0=m28;m61.P1=m62;m60.P0=m14;m60.P1=m58;m60.P2=m59;m60.P3=m28;m59.P0=m58;m59.P1=m18;m59.P2=m60;m59.P3=m39;
m58.P0=m57;m58.P1=m14;m58.P2=m60;m58.P3=m59;m58.P4=m39;m57.P0=m54;m57.P1=m58;m57.P2=m38;m56.P0=m16;m56.P1=m37;
m55.P0=m25;m55.P1=m16;m55.P2=m3;m55.P3=m29;m54.P0=m53;m54.P1=m57;m54.P2=m16;m53.P0=m52;m53.P1=m54;m52.P0=m51;m52.P1=m53;
m51.P0=m48;m51.P1=m8;m51.P2=m47;m51.P3=m52;m50.P0=m17;m50.P1=m4;m50.P2=m10;m50.P3=m11;m49.P0=m48;m49.P1=m17;
m48.P0=m47;m48.P1=m51;m48.P2=m49;m47.P0=m46;m47.P1=m48;m47.P2=m8;m47.P3=m51;m46.P0=m45;m46.P1=m47;m45.P0=m44;m45.P1=m46;
m44.P0=m34;m44.P1=m35;m44.P2=m41;m44.P3=m31;m44.P4=m43;m44.P5=m32;m44.P6=m24;m44.P7=m45;m43.P0=m41;m43.P1=m42;m43.P2=m44;m43.P3=m32;
m42.P0=m32;m42.P1=m21;m42.P2=m43;m41.P0=m13;m41.P1=m35;m41.P2=m43;m41.P3=m44;m7.P0=m68;m7.P1=m51;m4.P0=m50;m4.P1=m10;m4.P2=m11;m4.P3=m5;m4.P4=m55;
m3.P0=m55;m3.P1=m2;m3.P2=m40;m3.P3=m50;m40.P0=m3;m40.P1=m29;m39.P0=m58;m39.P1=m38;m39.P2=m59;m38.P0=m39;m38.P1=m57;
m37.P0=m65;m37.P1=m20;m37.P2=m16;m36.P0=m70;m36.P1=m19;m35.P0=m41;m35.P1=m34;m35.P2=m44;m34.P0=m35;m34.P1=m44;
m33.P0=m63;m33.P1=m66;m32.P0=m31;m32.P1=m42;m32.P2=m44;m32.P3=m43;m31.P0=m44;m31.P1=m24;m31.P2=m32;m30.P0=m21;m30.P1=m43;m30.P2=m23;
m29.P0=m40;m29.P1=m55;m28.P0=m60;m28.P1=m61;m27.P0=m67;m27.P1=m68;m26.P0=m62;m26.P1=m64;m25.P0=m16;m25.P1=m55;
m24.P0=m31;m24.P1=m44;m23.P0=m30;m23.P1=m22;m23.P2=m71;m22.P0=m23;m22.P1=m44;m22.P2=m71;m21.P0=m42;m21.P1=m77;
m20.P0=m47;m20.P1=m66;m20.P2=m65;m20.P3=m37;m19.P0=m47;m19.P1=m36;m18.P0=m59;m18.P1=m6;m18.P2=m7;m17.P0=m49;m17.P1=m50;
m16.P0=m54;m16.P1=m56;m16.P2=m25;m16.P3=m55;m15.P0=m64;m15.P1=m67;m14.P0=m58;m14.P1=m60;m13.P0=m41;m12.P0=m76;m12.P1=m75;
m11.P0=m4;m11.P1=m50;m10.P0=m4;m10.P1=m50;m8.P0=m51;m8.P1=m47;m6.P0=m18;m5.P0=m4;m2.P0=m3;
m71.D3=1024;m23.D2=1024;m22.D2=1024;m17.D0=1024;m17.D1=1024;
};
#endif