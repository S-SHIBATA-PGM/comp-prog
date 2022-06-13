000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_139_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(3).
000007 01 T          PIC X(3).
000008 01 ans        PIC 9(10).
000009 01 i          PIC 9(10) VALUE ZERO COMP.
000010 01 len        PIC 9(10) VALUE 3.
000011 01 zs         PIC Z(9)9.
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT S.
000015   ACCEPT T.
000016   PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
000017     IF S(i:1) = T(i:1)
000018       ADD 1 TO ans
000019     END-IF
000020   END-PERFORM.
000021   MOVE ans TO zs.
000022   DISPLAY FUNCTION TRIM(zs).
000023   STOP RUN.
