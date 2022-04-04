/*
   bug-2197.c - originally part of the from the execute part of the gcc torture suite (see 20020503-1.c).
   HEavily modified to reproduce the underlying issue of bug 2197 on multiple architectures.
 */

#include <testfwk.h>

#ifdef __SDCC
#pragma std_c99
#endif

#ifndef __SDCC_mcs51
/* PR 6534 */
/* GCSE unified the two i<0 tests, but if-conversion to ui=abs(i) 
   insertted the code at the wrong place corrupting the i<0 test.  */

static char *
inttostr (long i, char buf[128])
{
  unsigned long ui = i;
  char *p = buf + 127;
  *p = '\0';
  if (i < 0)
    ui = -ui;
  do
    *--p = '0' + ui % 10;
  while ((ui /= 10) != 0);
  if (i < 0)
    *--p = '-';
  return p;
}
#endif

void
testTortureExecute (void)
{
#ifndef __SDCC_mcs51
  char buf[128], *p;

  p = inttostr (-1, buf);

  ASSERT(p[0] == '-');
  ASSERT(p[1] == '1');
  ASSERT(p[2] == '\0');
  ASSERT(p == buf + 127 - 2);

  return;
#endif
}
