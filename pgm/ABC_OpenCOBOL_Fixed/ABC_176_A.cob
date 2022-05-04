000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_176_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 T          PIC 9(10).
000008 01 X          PIC 9(10).
000009 01 ans        PIC 9(10).
000010 01 d          PIC 9(10).
000011 01 ln         PIC X(30).
000012 01 r          PIC 9(10).
000013 01 zs         PIC Z(9)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED BY SPACE INTO N X T.
000018   DIVIDE N BY X GIVING d REMAINDER r.
000019   IF ZERO < r THEN
000020     COMPUTE ans = (d + 1) * T
000021   ELSE
000022     MULTIPLY d BY T GIVING ans
000023   END-IF.
000024   MOVE ans TO zs.
000025   DISPLAY FUNCTION TRIM(zs).
000026   STOP RUN.

