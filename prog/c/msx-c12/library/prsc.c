/*
	(C) Copyrighted by ASCII corp., 1988
		All rights Reserved.

		File:	prsc.c
*/
#include <stdio.h>
#include <math.h>
#pragma	nonrec

#define BUF	0xf55e
#ifndef NOUSESL
#ifndef NOUSEXD
/*  use sl, xd  */
#define _spr _mspr
#define _scn _mscn
#else
/*  use sl  */
#define _spr _msprl
#define _scn _mscnl
#endif
#else
#ifndef NOUSEXD
/*  use xd  */
#define _spr _msprd
#define _scn _mscnd
#else
/*  use nomal type  */
#endif
#endif

/*

	long and double presion printf.

*/

extern  unsigned    _gv2();     /* in clib */
extern	STATUS	    _sspr();	/* in clib */
extern  TINY        _uspr();    /* in clib */

#ifndef NOUSESL
#define	USIGN	0x80
#else
#define	USIGN	0
#endif

STATUS
_spr(param, outfunc, ___)
int	*param;
int	(*outfunc)();
char	*___;           /* pointer for any type */
{
	char	c, *format;
	char	buf[15], *ptr, padch;
	TINY	radix;
	BOOL	dflag, leftjust;
	int     field, digits;
#ifndef NOUSESL
	BOOL	lflag;
#endif

	format = (char *)*param++;

	while (c = *format++) {
	if (c == '%') {
		ptr = buf;
		digits = 6;
		leftjust = dflag = NO;
		if (*format == '-') {
			format++;
			leftjust = YES;
			}
		if((padch = *format) != '0')
			padch = ' ';
		field = _gv2(&format);
		if (*format == '.') {
			format++;
			digits = _gv2(&format);
			dflag = YES;
			}
#ifndef NOUSESL
		lflag = NO;		/* long presion flag */
		if(toupper(*format) == 'L') {
			format++;
			lflag = YES;
			}
#endif
		switch (toupper(c = *format++)) {
		case 'D':
			if (*param < 0
#ifndef NOUSESL
				&& !lflag
#endif
					) {
				*param = -*param;
				*ptr++ = '-';
				field--;
				}
			radix = 10;
			goto nums;
		case 'X':
			radix = 16 | USIGN;
			goto nums;
		case 'U':
			radix = 10 | USIGN;
			goto nums;
		case 'O':
			radix = 8 | USIGN;
	nums:
#ifndef NOUSESL
			if(lflag) {
				field -= strlen(sltoa(ptr, *param++, radix));
				goto dflagno;
				}
#endif
			field -= _uspr(&ptr, *param++, radix & ~USIGN);
			goto pad;

#ifndef NOUSEXD
		case 'E':
			digits |= 0x80;
		case 'F':
			field -= strlen(ptr = xdtoa(NULL, *param++, digits));
			digits &= 0x7f;
			goto dflagno;
#endif

		case 'S':
			ptr = (char *)*param++;
		field -= (dflag && strlen(ptr) > digits ? digits : strlen(ptr));
			goto spad;

		case 'C':
			*ptr++ = *param++;
			field--;
	pad:
			*ptr = '\0';
			ptr = buf;
	dflagno:
			dflag = NO;
	spad:
			if (!leftjust) {
				if(c != 'S' && c != 'C' && padch == '0' && *ptr == '-') {
					if ((*outfunc)('-', ___) == ERROR)
						return (ERROR);
					ptr++;
					}
				while (field-- > 0)
					if ((*outfunc)(padch, ___) == ERROR)
						return (ERROR);
				}
			while (c = *ptr++) {
				if (!dflag || digits-- > 0) {
					if ((*outfunc)(c, ___) == ERROR)
						return (ERROR);
					}
				}
			if (leftjust)
				while (field-- > 0)
					if ((*outfunc)(' ', ___) == ERROR)
						return (ERROR);
			break;

		case '\0':
			return (OK);
		default:
			goto cout;
		}
		}
	else
	cout:
		if ((*outfunc)(c, ___) == ERROR)
			return (ERROR);
		}
	return (OK);
	}


STATUS  printf(nargs, format)
int     nargs;
char    *format;
{
    return (_spr(&format, putc, stdout));
}

STATUS  fprintf(nargs, iobuf, format)
int     nargs;
FILE    *iobuf;
char    *format;
{
    return (_spr(&format, putc, iobuf));
}

VOID    sprintf(nargs, buffer, format)
int     nargs;
char    *buffer, *format;
{
    _spr(&format, _sspr, &buffer);
    *buffer = '\0';
}

extern	int	_igs();		/*  in clib  */
extern	TINY	_bc();		/*  in clib  */
extern	int	_sscn();	/*  in clib  */
extern	VOID	_suget();	/*  in clib  */

#ifndef NOUSESL
VOID
_msll(p, valc, radix)
SLONG	*p;
TINY	radix, valc;
{
	SLONG	long1;

	*((int *)&long1 + 1) = *(int *)&long1 = 0; /* long1= 0; */
	long1.byte[0] = (char)radix;	/*  long1 = (SLONG)radix;  */
	slmul(p, p, &long1);		/*  *p *= radix;  */
	long1.byte[0] = valc;		/*  long1 = (SLONG)valc;  */
	sladd(p, p, &long1);		/*  *p += valc  */
	}
#endif

BOOL
issp(c)
char	c;
{
	return(isspace(c));
	}

#ifndef NOUSEXD
char	*
_msfl(p, assign, infunc, ___)
XDOUBLE	*p;
BOOL	assign;
int	(*infunc)();
char	*___;		/* pointer to FILE or (char *) */
{
	int	c;
	char	*s;
	s = (char *)BUF;	/*  use BUF  */
	if((c = _igs(infunc, ___)) != EOF) {
		*s++ = c;
		while((c = (*infunc)(___)) != EOF && !issp((char)c)
				&& s < (char *)(BUF + 256)) {
			*s++ = c;
			}
		*s = '\0';		/*  basic text terminator  */
		if(assign)
			atoxd(p, (char *)BUF);
		}
	}
#endif

int
_scn(param, infunc, ___, ugfunc)
int	**param;
int	(*infunc)();
char	*___;		/* pointer to FILE or (char *) */
int	(*ugfunc)();
{
	char	*format, fmtchar, *s;
	BOOL	assign, matched;
	TINY	radix, valc;
	int	c, n, sign;
#ifndef NOUSESL
	BOOL	lflag;
	SLONG	longv;
#else
	int	value;
#endif

	format = (char *)*param++;
	n = 0;
	matched = YES;
	while (matched && (fmtchar = *format++)) {
	if (fmtchar == '%') {
		assign = YES;
		if (*format == '*') {
			format++;
			assign = NO;
			}
#ifndef NOUSESL
		lflag = NO;
		if (toupper(*format) == 'L') {
			format++;
			lflag = YES;
			}
#endif
		switch (fmtchar = toupper(*format++)) {
		case 'X':
			radix = 16;
			goto val;
		case 'O':
			radix = 8;
			goto val;
		case 'U':
		case 'D':
			radix = 10;
	val:
			c = _igs(infunc, ___);
			sign = 1;
			if (fmtchar == 'D' && c == '-') {
				sign = -1;
				c = (*infunc)(___);
				}
#ifndef NOUSESL		/* longv= 0; */
			*((int *)&longv + 1) = *(int *)&longv = 0;
			if (_bc((char)c, radix) != ERROR) {
				while ((valc = _bc((char)c, radix)) != ERROR) {
					_msll(&longv, valc, radix);
					c = (*infunc)(___);
					}
			if (assign) {
				if(sign == -1)
					slneg(&longv, &longv);
				if(lflag)
					slcpy(*param++, &longv);
				else
					**param++ = *(int *)&longv;
				n++;
				}
			}
		else
			matched = NO;
#else
			value = 0;
			if (_bc((char)c, radix) != ERROR) {
				while ((valc = _bc((char)c, radix)) != ERROR) {
					value = value * radix + valc;
					c = (*infunc)(___);
					}
			if (assign) {
				**param++ = value * sign;
				n++;
				}
			}
		else
			matched = NO;
#endif
		break;

		case 'S':
			if ((c = _igs(infunc, ___)) != EOF) {
				s = (char *)*param;
				while (c != EOF && !issp((char)c)) {
					if (assign)
						*s++ = c;
					c = (*infunc)(___);
					}
				if (assign) {
					*s = '\0';
					param++;
					n++;
					}
				}
			break;

#ifndef NOUSEXD
		case 'E':
		case 'F':
			_msfl(*param, assign, infunc, ___);
			if(assign) {
				param++;
	 			n++;
				}
			break;
#endif

		case 'C':
			if ((c = (*infunc)(___)) != EOF) {
				if (assign) {
					*((char *)*param++) = c;
					n++;
					}
				continue;
				}
			break;

		default:
			return (n);
			}
		}
	else if (issp(fmtchar)) {
		c = _igs(infunc, ___);
	}
	else {
		if ((c = (*infunc)(___)) == fmtchar)
			continue;
		matched = NO;
		}
	/* comes here with unmatched character in c */
	if (c == EOF)
		return ((n == 0)? EOF: n);
	else
		(*ugfunc)((char)c, ___);	/* prepare for next scan */
		}
	return (n);
	}

int	 scanf(nargs, format)
int	 nargs;
char	*format;
{
	return (_scn(&format, getc, stdin, ungetc));
}

int	 fscanf(nargs, iobuf, format)
int	 nargs;
FILE	*iobuf;
char	*format;
{
	return (_scn(&format, getc, iobuf, ungetc));
}

int	 sscanf(nargs, line, format)
int	 nargs;
char	*line, *format;
{
	return (_scn(&format, _sscn, &line, _suget));
}
                                                                                   