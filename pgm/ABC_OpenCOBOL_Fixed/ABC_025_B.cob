000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_025_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 N          PIC 9(10).
000009 01 ans        PIC S9(10) VALUE ZERO.
000010 01 d          PIC S9(10).
000011 01 dir        PIC X(4).
000012 01 i          PIC 9(10) COMP.
000013 01 ln         PIC X(30).
000014 01 s          PIC X(4).
000015 01 z          PIC X(10).
000016 01 zs         PIC Z(9)9.
000017 
000018 PROCEDURE DIVISION.
000019   ACCEPT ln.
000020   UNSTRING ln DELIMITED BY SPACE INTO N A B.
000021   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000022     ACCEPT ln
000023     UNSTRING ln DELIMITED BY SPACE INTO s d
000024     IF d < A THEN
000025       MOVE A TO d
000026     ELSE
000027       IF B < d THEN
000028         MOVE B TO d
000029       END-IF
000030     END-IF
000031     IF "West" = s THEN
000032       MULTIPLY d BY -1 GIVING d
000033     END-IF
000034     ADD d TO ans
000035   END-PERFORM.
000036   IF ans < ZERO THEN
000037     MOVE "West" TO dir
000038   ELSE
000039     MOVE "East" TO dir
000040   END-IF.
000041   IF ZERO = ans THEN
000042     DISPLAY ZERO
000043   ELSE
000044     MOVE ans TO zs
000045     STRING
000046       dir
000047       " "
000048       FUNCTION TRIM(zs)
000049       INTO z
000050     END-STRING
000051     DISPLAY FUNCTION TRIM(z)
000052   END-IF.
000053   STOP RUN.
