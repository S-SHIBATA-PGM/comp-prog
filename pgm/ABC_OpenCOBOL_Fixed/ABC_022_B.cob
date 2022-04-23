000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_022_B.
000003
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A1.
000007    03 A PIC 9(1) VALUE ZERO OCCURS 100000.
000008 01 N          PIC 9(10).
000009 01 cnt        PIC 9(10) VALUE ZERO COMP.
000010 01 cur        PIC 9(10).
000011 01 i          PIC 9(10) VALUE 1 COMP.
000012 01 zs         PIC Z(9)9.
000013
000014 PROCEDURE DIVISION.
000015   ACCEPT N.
000016   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000017     ACCEPT cur
000018     IF 1 = A(cur) THEN
000019       ADD 1 TO cnt
000020     ELSE
000021       MOVE 1 TO A(cur)
000022     END-IF
000023   END-PERFORM.
000024   MOVE cnt TO zs.
000025   DISPLAY FUNCTION TRIM(zs).
000026   STOP RUN.
