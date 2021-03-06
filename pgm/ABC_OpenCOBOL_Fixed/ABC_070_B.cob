000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_070_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(3).
000007 01 B          PIC 9(3).
000008 01 C          PIC 9(3).
000009 01 D          PIC 9(3).
000010 01 ln         PIC X(15).
000011 01 mn         PIC 9(3).
000012 01 mx         PIC 9(3).
000013 01 zs         PIC Z(3)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED BY SPACE INTO A B C D.
000018   COMPUTE mx = FUNCTION MAX(A, C).
000019   COMPUTE mn = FUNCTION MIN(B, D).
000020   IF mx < mn THEN
000021     SUBTRACT mx FROM mn
000022   ELSE
000023     MOVE ZERO to MN
000024   END-IF.
000025   MOVE mn TO zs.
000026   DISPLAY FUNCTION TRIM(zs).
000027   STOP RUN.

