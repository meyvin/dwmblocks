static const Block blocks[] = {
	/*Icon*/	/*Command*/	 		/*Update Interval*/	/*Update Signal*/
        {"  ", "~/.dwm/dwmblocks/scripts/kernel",	360,			2},
	{"  ", "~/.dwm/dwmblocks/scripts/pacupdate",	360,			9},
	{"  ", "~/.dwm/dwmblocks/scripts/memory",	6,			1},
	{"  ", "~/.dwm/dwmblocks/scripts/volume",	2,			10},
	{"", "~/.dwm/dwmblocks/scripts/battery",	2,			11},
	{"  ", "~/.dwm/dwmblocks/scripts/clock",	5,			0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "|";
static unsigned int delimLen = 5;
