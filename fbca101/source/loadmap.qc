#include "settings.h"
#include "maps.h"

/*
============
InvalidMap

============
*/
void() InvalidMap =
{
	sprint_fb(self, 2, mapname);
	sprint_fb(self, 2, " �� ��� � ��������� ���\n");
	sprint_fb(self, 2, "���� maps ��� ����:\n");
};

#include "wp_qclist.qc"

/*
============
LoadMap

Make sure InvalidMap is updated!!!
============
*/
void() LoadMap =
{
	load_frogbots = invalid_map = TRUE;
	item_marker_index = marker_index;

	WP_DoLoad();	//generated inside wp_qclist.qc

	// assertion: map is invalid
	StartItems();
};