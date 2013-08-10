/*
 * UNPACK: universal archive extraction utility
 * Public Domain software, by Pierre Gielen 1/1994
 * language: Hi-Tech C v3.09 for MSXDOS
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stat.h>

#define PMA 1
#define ZIP 2
#define ARC 3
#define LZH 4
#define ZOO 5
#define ARJ 6
#define LBR 7

static char version[] = "REM made with UNP\n";

/* leave room for changes in commandline array */

static char commandline[8][80] = {
		"DEL %\n",                 /* delete afterwards */
		"PMEXT % *.*/W\n",         /* unpack PMA */
		"UNZIP % *.*\n",           /* unpack ZIP */
		"UNARC % H:*.*\n",         /* unpack ARC */
		"PMEXT % *.*/W\n",         /* unpack LZH */
		"BOOZ X %\n",              /* unpack ZOO */
		"UNARJ E %\n",             /* unpack ARJ */
		"LT31 % H:*.*\n" };        /* unpack LBR */


static char list[50][13];		/* 50 archives max. */
static unsigned char comp[50];
static int  num_entries;


/* determine compression type by looking at first 4 bytes */

unsigned char test_compression(archive)
char *archive;
{
	FILE *aarchive;
	unsigned char c1, c2, c3, c4;

	printf("%s : ",archive);
	aarchive = fopen(archive, "rb");
	if (aarchive == NULL) {
		puts("open error");
		return(0);
	}
	c1 = fgetc(aarchive);
	c2 = fgetc(aarchive);
	c3 = fgetc(aarchive);
	c4 = fgetc(aarchive);
	fclose (aarchive);

	if ((c3 == '-') && (c4 == 'p')) {  /* pmarc */
		puts("PMArced");
		return(PMA);
	}
	if ((c1 == 'P') && (c2 == 'K')) { /* zip */
		puts("ZIPped");
		return(ZIP);
	}
	if (c1 == 0x1a) { /* arc */
		puts("ARCed");
		return(ARC);
	}
	if ((c3 == '-') && (c4 == 'l')) { /* lzh */
		puts("LHARCed");
		return(LZH);
	}
	if ((c1 == 'Z') && (c2 == 'O') && (c3 == 'O')) { /* zoo */
		puts("ZOO'd");
		return(ZOO);
	}
	if ((c1 == 0x60) && (c2 == 0xea)) { /* arj */
		puts("ARJed");
		return(ARJ);
	}
	if ((c1 == 0x00) && (c2 == 0x20) && (c3 == 0x20)) { /* lbr */
		puts("LBRed");
		return(LBR);
	}
	puts("unknown compression");
	return(0);
}

/* replace % character by string */

char * expandline(char * original, char * template)
{
	int l1;
	char *p,*newline;

	l1=strlen(template)+strlen(original)+1;
	if(!newline)
		newline=malloc(l1);
	else newline=realloc(newline,l1);
	if(newline==NULL)
	  return NULL;
	memset(newline,0,l1);
	p=strchr(template,'%');
	if(p!=NULL) {
	  strncpy(newline,template,strlen(template)-strlen(p));
	  strcat(newline,original);
	  strcat(newline,p+1);
	} else strcpy(newline,template);
	return (newline);
}

/* process all files found */

void process_control(FILE * fo)
{
	uchar num,t;
	char *s;

	for(t=1;t<8;t++) {
		for(num=0;num<num_entries;num++) {
			if(comp[num]==t) {
				s=expandline(list[num],commandline[t]);
				fputs(s,fo);
				s=expandline(list[num],commandline[0]);
				fputs(s,fo);
			}
		}
	}
}


main()
{
	int nf,t=0;
	FILE * fo;
	static char * tiep[] =
	{"*.ARC","*.ARJ","*.LBR","*.LZH","*.PMA","*.QW?","*.ZIP","*.ZOO"};
	static struct find_t fileinfo;

	puts("UNPack 1.0  --PGN 1994");
	puts("Archive extraction utility\n");
	num_entries=0;
	for (t=0;t<8;t++) {
		nf=findfirst(tiep[t],0,&fileinfo);
		while(nf==0) {
			strcpy(list[num_entries++],(char *)fileinfo.fname); /* addtolist */
			nf=findnext(&fileinfo);
		}
	}
	if(num_entries==0)
		puts("Nothing to do");
	else {
		for(nf=0;nf<num_entries;nf++)
		    comp[nf]=test_compression(list[nf]);
		fo = fopen("$uncomp.bat","w");
		if(fo==NULL) {
			puts("Can't open output file");
			exit(-1);
		}
		fputs(version,fo);
		process_control(fo);
		fclose(fo);
		system("$uncomp");
	}

}
                  