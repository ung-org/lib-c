#ifndef __NONSTD_CURSES_H__
#define __NONSTD_CURSES_H__

typedef char chtype;
typedef int cchar_t;
typedef int wchar_t;
typedef int attr_t;
typedef struct { int n; } WINDOW;
static WINDOW *stdscr;
extern int wmove(WINDOW *, int, int);

#define OK 0
#define ERR -1

#define CURSES_FUNCTION0(_rt, _fn) \
_rt mvw##_fn(WINDOW *_w, int _y, int _x) { \
	return (wmove(_w, _y, _x) == OK) ? w##_fn(_w) : ERR; \
} \
_rt mv##_fn(int _y, int _x) { return mvw##_fn(stdscr, _y, _x); } \
_rt _fn(void) { return w##_fn(stdscr); }

#define CURSES_FUNCTION(_rt, _fn, _t1) \
_rt mvw##_fn(WINDOW *_w, int _y, int _x, _t1 _a1) { \
	return (wmove(_w, _y, _x) == OK) ? w##_fn(_w, _a1) : ERR; \
} \
_rt mv##_fn(int _y, int _x, _t1 _a1) { return mvw##_fn(stdscr, _y, _x, _a1); } \
_rt _fn(_t1 _a1) { return w##_fn(stdscr, _a1); }

#define CURSES_FUNCTION2(_rt, _fn, _t1, _t2) \
_rt mvw##_fn(WINDOW *_w, int _y, int _x, _t1 _a1, _t2 _a2) { \
	return (wmove(_w, _y, _x) == OK) ? w##_fn(_w, _a1, _a2) : ERR; \
} \
_rt mv##_fn(int _y, int _x, _t1 _a1, _t2 _a2) { return mvw##_fn(stdscr, _y, _x, _a1, _a2); } \
_rt _fn(_t1 _a1, _t2 _a2) { return w##_fn(stdscr, _a1, _a2); }

#define CURSES_FUNCTION4(_rt, _fn, _t1, _t2, _t3, _t4) \
_rt mvw##_fn(WINDOW *_w, int _y, int _x, _t1 _a1, _t2 _a2, _t3 _a3, _t4 _a4) { \
	return (wmove(_w, _y, _x) == OK) ? w##_fn(_w, _a1, _a2, _a3, _a4) : ERR; \
} \
_rt mv##_fn(int _y, int _x, _t1 _a1, _t2 _a2, _t3 _a3, _t4 _a4) { return mvw##_fn(stdscr, _y, _x, _a1, _a2, _a3, _a4); } \
_rt _fn(_t1 _a1, _t2 _a2, _t3 _a3, _t4 _a4) { return w##_fn(stdscr, _a1, _a2, _a3, _a4); }

#define CURSES_WFN0(_rt, _fn) \
_rt _fn(void) { return w##_fn(stdscr); }

#define CURSES_WFN1(_rt, _fn, _t1) \
_rt _fn(_t1 _a1) { return w##_fn(stdscr, _a1); }

#define CURSES_WFN2(_rt, _fn, _t1, _t2) \
_rt _fn(_t1 _a1, _t2 _a2) { return w##_fn(stdscr, _a1, _a2); }

#define CURSES_WFN8(_rt, _fn, _t1, _t2, _t3, _t4, _t5, _t6, _t7, _t8) \
_rt _fn(_t1 _a1, _t2 _a2, _t3 _a3, _t4 _a4, _t5 _a5, _t6 _a6, _t7 _a7, _t8 _a8) \
{ return w##_fn(stdscr, _a1, _a2, _a3, _a4, _a5, _a6, _a7, _a8); }

#define CURSES_VWFN1(_fn, _t1) \
void _fn(_t1 _a1) { w##_fn(stdscr, _a1); }

#endif
