MODULE log10k;

FROM MathLib IMPORT Ln;

(*

T.A. Elkin's Log(10K!) Benchmark.

Computes number of decimal digits in 10,000 factorial.
Exact answer is 35660

See COMPUTERWORLD. 3/20/87 for more info.

Adapted from the CP/M Basic Version by Jim Lill 7/20/87

Comparision Times:

MSX 6MHz, Turbo Pascal: 	200 secs
MSX 6MHz, Turbo Modula-2:	 99 secs
IBM 10MHz, GW-BASIC:		149 secs

*)

CONST exact = 3566.0E1;

VAR i : INTEGER;
    e,x,y,z : REAL;

BEGIN;  (*log10k*)
  z:= 1.0E1;
  x:= 0.0E0;
  WRITELN('Elkins Log(10K!) Benchmark',CHR(7));
  FOR i := 2 TO 10000 DO
    y:= FLOAT(i);
    x:= x + Ln(y);
  END;
  WRITELN('Done',CHR(7));
  WRITELN('Error: ',(exact- x/Ln(z)))
END log10k.

                                          