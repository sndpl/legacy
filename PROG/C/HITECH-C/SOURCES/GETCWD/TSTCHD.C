/* Test int chdir(s) */

#include <stdio.h>
#include <sys.h>


main(argc,argv)
char ** argv;
{
	char * s;

	printf("Test CHDIR(s)\n");
	  if (argc>1)
	    {
		strcpy(s,argv[1]);
		printf("Return value is: %d\n",chdir(s));
	     }
}

   