/*
genqc.c

This is the sourcecode to the genqc app written for Trinca by Spike, to automatically adapt Parboil's bots for different maps.
Run the genlist.bat program to generate a list and run the program.

Note: This program is pretty lame.
It only works properly when run from the src/maps directory, where the main qc code is in src.
It also requires all map files to be named map_blah.qc to properly generate the qc.






Usage:
To change the list, simply add or remove qc files from the maps file and double click the genlist.bat program.
*/





#include <stdio.h>

int main(int argc, char *argv[])
{
	char buffer[800][256];
	char temp[256];
	char *s;
	FILE *in;
	FILE *out;
	int count = 0;
	int i, j;

	memset(buffer, 0, sizeof(buffer));

	if (argc > 1)
		in = fopen(argv[1], "rt");
	else
		in = fopen("maplist.txt", "rt");



	
	while(fgets(buffer[count], sizeof(buffer[count]), in))
	{
		memmove(buffer[count], buffer[count]+4, strlen(buffer[count]+4)+1);
		for (s = buffer[count]; *s>' '&&*s!='.'; s++)	//fgets still has a \n on it. strip off all trailing white-space (or a .qc)
			;
		*s = '\0';
		count++;
	}
	fclose(in);

	//sort alphabetically
	//good ol' bubble sort.
	for (i = 0; i < count; i++)
	{
		for (j = 0; j < i; j++)
		{
			if (strcmp(buffer[i], buffer[j]) < 0)
			{	//swap
				strcpy(temp, buffer[i]);
				strcpy(buffer[i], buffer[j]);
				strcpy(buffer[j], temp);
			}
		}
	}

	//the maps header, not needed,  but needs to be there, or all the map files need thier #includes and #ifdefs stripped out. urgh.
	out = fopen("../maps.h", "wt");
	{
		fprintf(out, "#ifndef _MAPS_H_\n");
		fprintf(out, "#define _MAPS_H_\n");
		for (i = 0; i < count; i++)
			fprintf(out, "#define MAP_%s\n", buffer[i]);
		fprintf(out, "#endif\n");
	}
	fclose(out);

	printf("Building QC source with these maps:\n");

	//list of qc files containing the waypoints themselves.
	out = fopen("../wp_qclist.qc", "wt");
	{
		for (i = 0; i < count; i++)
		{
			printf("map: %s\n", buffer[i]);
			fprintf(out, "#include \"maps/map_%s.qc\"\n", buffer[i]);
		}

		fprintf(out, "void() WP_DoLoad =\n");
		fprintf(out, "{\n", buffer[i]);
		for (i = 0; i < count; i++)
		{
			fprintf(out, "\tif (mapname == \"%s\")\n", buffer[i]);
			fprintf(out, "\t{\n");
			fprintf(out, "\t\tmap_%s();\n", buffer[i]);
			fprintf(out, "\t\treturn;\n");
			fprintf(out, "\t}\n");
			fprintf(out, "\n");
		}
		fprintf(out, "};\n\n", buffer[i]);

		fprintf(out, "string(string mname) MapHasWaypoints =\n");
		fprintf(out, "{\n");
		for (i = 0; i < count; i++)
		{
			fprintf(out, "\tif (mname == \"%s\")\n", buffer[i]);
			fprintf(out, "\t\treturn \"%s\";\n", buffer[i]);
		}
		fprintf(out, "\treturn \"\";\n");
		fprintf(out, "}\n");
	}
	fclose(out);

	out = fopen("../wp_aliases.qc", "wt");
	{
		for (j = 0; j < count; )
		{
			fprintf(out, "void() map_aliases_%i =\n", (j/16)+1);
			fprintf(out, "{\n");
			fprintf(out, "\tmsg_entity = self;\n");
			for (i = 0; i < 16 && i+j < count; i++)
			{	//warning: could overflow user's back buffers. :(
				fprintf(out, "\tstuffcmd(\"alias %s \\\"cmd %s\\\"\\n\");\n", buffer[i+j], buffer[i+j]);
			}
			fprintf(out, "};\n");
			j += i;
		}
		fprintf(out, "float(float groupnum) map_aliases =\n");
		fprintf(out, "{\n");
		for (j = 0; j < count; j+=16)
		{
			fprintf(out, "\tif (groupnum == %i)\n", (j/16)+1);
			fprintf(out, "\t{\n");
			fprintf(out, "\t\tmap_aliases_%i();\n", (j/16)+1);
			fprintf(out, "\t\treturn 1;\n");
			fprintf(out, "\t}\n");
		}
			fprintf(out, "\treturn 0;\n");	//no more
		fprintf(out, "};\n");
	}
	fclose(out);

	out = fopen("../wp_list.qc", "wt");	//warning: could fill the backbuf far too easily.
	{
		fprintf(out, "\n\n\n\n\n\n");
		fprintf(out, "void() Sprintmaps =\n");
		fprintf(out, "{\n");
		fprintf(out, "\tsprint_fb(self, 2, \"συπποςτεδ ναπσ:\\n\");\n");
		if (count > 128)	//four columns
		{
			for (i = 0; i < (count+3)/4; i++)
				fprintf(out, "\tsprint_fb(self, 2, \"%9s %9s %9s %9s\\n\");\n", buffer[i], buffer[i+1+(count/4)], buffer[i+2+(count/4)*2], buffer[i+3+(count/4)*3]);
		}
		else		//three columns.
		{
			for (i = 0; i < (count+2)/3; i++)
				fprintf(out, "\tsprint_fb(self, 2, \"%13s %13s %13s\\n\");\n", buffer[i], buffer[i+1+(count/3)], buffer[i+2+(count/3)*2]);
		}
		fprintf(out, "};\n");
		fprintf(out, "\n");
	}
	fclose(out);

}
