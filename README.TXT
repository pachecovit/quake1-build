Package contains MVDSV 0.29 and KTX 1.36 compiled on Gentoo 
(-m32 compiler flags)

1) tar zxfv package.tar.gz
- extracts the package and creates a directory called qwserver

2) OPTIONAL! getting sources from SVN and compiling it
- make temporary directory, go there and do the following:
- svn co http://qw-dev.net/svn/mvdsv/trunk mvdsv
- svn co http://qw-dev.net/svn/ktx/trunk ktx
- Configure and make both.
- Replace qwserver/mvdsv with mvdsv from SVN-build.
- Replace qwserver/ktx/qwprogs.so with qwprogs.so from SVN-build.

3) Copy pak0.pak and pak1.pak to qwserver/id1 (we can't distribute 
these).

4) Startup files are qwserver/port*
- Change -port and +exec port*.cfg from these files if required (only 
required if you ADD more ports)

5) Motd, sv_serverip and qtv_streamport are on qwserver/ktx/port*.cfg.
- sv_serverip tells your server on what IP it is located. It is 
IMPORTANT to configure this variable properly
- qtv_streamport is used for QTV streaming capability. It is IMPORTANT 
to configure this variable properly to enable QTV

6) Modify qwserver/ktx/pwd.cfg and qwserver/ktx/vip_ip.cfg.
- pwd.cfg contains rcon and qtv passwords. It is IMPORTANT to modify 
this file and take off the write flag (chmod -w).
- vip_ip.cfg is used for VIP related stuff (extra spectators/admin 
rights).

7) Extract or copy your maps or map-packs to qwserver/id1/maps 
directory.

8) start servers with ./servers in qwserver directory.
- Modify the servers file if you add or decrease the amount of servers 
to be run.
- This startup script makes the servers run on the background having 
auto-restart enabled.


For more detailed information, visit: http://qw-dev.net/projects/ktx/wiki


The "standalone" version of FFA is no longer shipped with the server package.
You can download it from:

http://qw-dev.net/projects/ktx/files
http://qw-dev.net/projects/mvdsv/files

It is included in the previous release (KTX 1.35 + MVDSV 0.28 server package),
so admins wanting to run "specially" built FFA can get it from that package.
