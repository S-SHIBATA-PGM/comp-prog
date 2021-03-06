000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_005_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 T1.
000008    03 T       PIC S9(10) OCCURS 100 DEPENDING N.
000009 01 i          PIC 9(10) COMP.
000010 01 zs         PIC Z(9)9.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT N.
000014   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000015     ACCEPT T(i)
000016   END-PERFORM.
000017   SORT T ASCENDING T.
000018   MOVE T(1) TO zs.
000019   DISPLAY FUNCTION TRIM(zs).
000020   STOP RUN.

