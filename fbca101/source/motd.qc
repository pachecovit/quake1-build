#include "settings.h"

void() PrintMOTD =
{
	local string s1, s2;
	s1 = infokey(world, "k_motd1");
	s2 = infokey(world, "k_motd2");
	if (s1 == "") s1 = string_null;
	if (s2 == "") s2 = string_null;
	if (self.attack_finished < time || k_shutdown) {
		remove(self);
		k_shutdown = 0;
		return;
	}
	if (self.attack_finished > time + 6) centerprint5(self.owner, "Welcome to\n\n", s1, "\n", s2, "\n\n€‚\n");
	else centerprint5(self.owner, "Welcome to\n\n", s1, "\n", s2, "\n\n€‚\n\nÆâãá multi map pack by œôòinãá v•™›\n\nbased on Æâãá “®’“ëô by ÐáòboiL\n");
	self.nextthink = time + 0.7;
};

void() MakeMOTD =
{
	local entity motd;
	motd = spawn();
	motd.classname = "motd";
	motd.owner = self;
	motd.think = PrintMOTD;
	motd.nextthink = time + 0.5;
	motd.attack_finished = time + 7;
};

void() AliasesTime =
{
	self.aliastime = time + 1;
	self.aliasstage = 0;
};

void() StuffAliases =
{
	if (self.aliastime)
	if (time >= self.aliastime)
	{
		self.aliastime = time + 1;
		self.aliasstage = self.aliasstage + 1;

		if (self.aliasstage == 1)
			aliases2();
		else if (self.aliasstage == 2)
			aliases3();
		else if (self.aliasstage == 3)
		{
			aliases4();
			sprint_fb(self, 2, "Commands downloaded\n");
		}
		else
		{
			if (!map_aliases(self.aliasstage - 3))
			{
				self.k_stuff = 1;
				self.aliastime = 0;	//stop going
				sprint_fb(self, 2, "Maps downloaded\n");
			}
		}
	}
};