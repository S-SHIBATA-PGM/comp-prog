000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_162_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 accum      PIC 9(19).
000008 01 c          PIC 9(19).
000009 01 c1         PIC 9(19).
000010 01 c3         PIC 9(19).
000011 01 c5         PIC 9(19).
000012 01 c15        PIC 9(19).
000013 01 dvd        PIC 9(10).
000014 01 qt         PIC 9(19).
000015 01 zs         PIC Z(18)9.
000016 
000017 PROCEDURE DIVISION.
000018   ACCEPT N.
000019   MOVE 1 TO dvd.
000020   PERFORM CALC.
000021   MOVE c TO c1.
000022   MOVE 3 TO dvd.
000023   PERFORM CALC.
000024   MOVE c TO c3.
000025   MOVE 5 TO dvd.
000026   PERFORM CALC.
000027   MOVE c TO c5.
000028   MOVE 15 TO dvd.
000029   PERFORM CALC.
000030   MOVE c TO c15.
000031   COMPUTE accum = c1 - c3 - c5 + c15.
000032   MOVE accum TO zs.
000033   DISPLAY FUNCTION TRIM(zs).
000034   STOP RUN.
000035 
000036 CALC SECTION.
000037   DIVIDE N BY dvd GIVING qt.
000038   COMPUTE c = (dvd + (qt * dvd)) * qt / 2.

