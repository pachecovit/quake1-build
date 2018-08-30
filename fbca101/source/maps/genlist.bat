@rem build the maplist, and run the qc generator.
@rem I don't want to build the dir functionality into genqc.exe
@rem Besides, this gives the user the chance to remove maps.
@dir /B *.qc > maplist.txt
@genqc
@cd ..
@fteqccgui -stdout -O3 -Ovc >log
@type log
@del log
@cd maps
@pause