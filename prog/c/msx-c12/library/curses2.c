/*
	(C) Copyrighted by ASCII corp., 1988
		All rights Reserved.

		File:	curses2.c
*/

/*  Bug detected on Mon.JAN-26th -->Fixed*/

#pragma nonrec

#include <stdio.h>
#include <curses.h>
#include <bdosfunc.h>
/*
#define NOUSESL
#define NOUSEXD
 */
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

STATUS _spr();

VOID _addw(ch, win)
char ch;
WINDOW *win;
{
    waddch(win, ch);
}

STATUS  wprintw(nargs, win, format)
int     nargs;
WINDOW  *win;
char    *format;
{
    return(_spr(&format, _addw, win));
}

STATUS printw(nargs, format)
int     nargs;
char    *format;
{
    return(_spr(&format, _addw, stdscr));
}

/*
 * input from window
 */
char winch(win)
WINDOW *win;
{
    return(win->_index[win->_cury]._y[win->_curx]);
}

char inch()
{
    return(winch(stdscr));
}

/*
 * input from console
 */
char _cgetchar()
{
    int de, hl;     /* dummy */
    char ch;
    if(_tty & _RAW)
	return(((ch = bdos(RAWIN, de, hl)) == '\r')? '\n': ch);

    return(((bdos(DIRIN, de, hl)) == '\r')? '\n': ch);
}

char wgetch(win)
WINDOW *win;
{
    char ch;
    unsigned hl, de;

    if(win->_scroll == FALSE && (win->_flags & _FULLWIN)
	&& win->_curx == win->_maxx - 1 && win->_cury == win->_maxy - 1)
	return(ERR);

/*
    _move(win->_cury, win->_curx);
*/
    ch = _cgetchar();
    if(_tty & _ECHO) {
/*
	if(wmove(curscr, (int)win->_cury + win->_begy,
	     (int)win->_curx + win->_begx) == ERROR)
	    return(ERROR);
 */
	waddch(win, ch);
	wrefresh(win);
    }
    return(ch);
}


char cgetch()
{
    return(wgetch(stdscr));
}

STATUS wgetstr(win, str)
WINDOW *win;
char   *str;
{
    while((*str = wgetch(win)) != ERR && *str != '\n')
	str++;
    if(*str == ERR) {
	*str = '\0';
	return(ERROR);
    }
    *str = '\0';
    return(OK);
}

STATUS getstr(str)
char *str;
{
    return(wgetstr(stdscr, str));
}

/*
 * "mv"functions
 */

STATUS mvwadch(win, y, x, ch)
WINDOW *win;
int    y, x;
char   ch;
{
    return(wmove(win, y, x) == ERR ? ERR: waddch(win, ch));
}

char mvwgtch(win, y, x)
WINDOW *win;
int y, x;
{
    return(wmove(win,y,x)==ERR?ERR:wgetch(win));
}

STATUS mvwadstr(win, y, x, str)
WINDOW *win;
int y, x;
char *str;
{
    return(wmove(win,y,x)==ERR?ERR:waddstr(win,str));
}

STATUS mvwgtstr(win, y, x, str)
WINDOW *win;
int y, x;
char *str;
{
    return(wmove(win,y,x)==ERR?ERR:wgetstr(win,str));
}

char mvwinch(win, y, x)
WINDOW *win;
int y, x;
{
    return(wmove(win,y,x)==ERR?ERR:winch(win));
}

STATUS mvwdelch(win, y, x)
WINDOW *win;
int y, x;
{
    return(wmove(win,y,x)==ERR?ERR:wdelch(win));
}

STATUS mvwinsch(win, y, x, c)
WINDOW *win;
int y, x;
char c;
{
    return(wmove(win,y,x)==ERR?ERR:winsch(win,c));
}

STATUS mvaddch(y, x, ch)
int y, x;
char ch;
{
    return(mvwadch(stdscr,y,x,ch));
}

char mvgetch(y, x)
int y, x;
{
    return(mvwgtch(stdscr,y,x));
}

STATUS mvaddstr(y, x, str)
int y, x;
char *str;
{
    return(mvwadstr(stdscr,y,x,str));
}

STATUS mvgetstr(y, x, str)
int y, x;
char *str;
{
    return(mvwgtstr(stdscr,y,x,str));
}

char mvinch(y, x)
int y, x;
{
    return(mvwinch(stdscr,y,x));
}

STATUS mvdelch(y, x)
int y, x;
{
    return(mvwdelch(stdscr,y,x));
}

STATUS mvinsch(y, x, c)
#ifdef BUG1_26
int y, x, c;
#else
int     y, x;
char    c;
#endif
{
  return(mvwinsch(stdscr,y,x,c));
}

STATUS mvwprintw(nargs, win, y, x, format)
int     nargs;
WINDOW  *win;
int     y, x;
char    *format;
{
    return((wmove(win, y, x) == OK)? _spr(&format, _addw, win): ERROR);
}

STATUS mvprintw(nargs, y, x, format)
int     nargs;
int     y, x;
char    *format;
{
    return((wmove(stdscr, y, x) == OK)? _spr(&format, _addw, stdscr): ERROR);
}

/*
 * clear screen
 */
STATUS _wclear(win)
WINDOW *win;
{
    werase(win);
    clearok(win, TRUE);
    return(OK);
}

STATUS wclear(win)
WINDOW *win;
{
    if(win == curscr) {
	_wclear(stdscr);
	return(wrefresh(stdscr));
    }
    return(_wclear(win));
}

STATUS clear()
{
    return(wclear(stdscr));
}
                                                                                   