#ifndef SETTINGS_H
#define SETTINGS_H

#ifdef FTEQCC
#pragma warning disable Q201
#define varkeyword var
#else
#define varkeyword
#endif

// Public
//#define QUAKE
#define TALK
#define ARENA // Asdf

#ifdef QUAKE
#pragma PROGS_DAT ../progs.dat
#endif

#endif
