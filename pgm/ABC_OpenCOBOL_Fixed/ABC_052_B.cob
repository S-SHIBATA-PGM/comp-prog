000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_052_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(30).
000007 01 N          PIC 9(3).
000008 01 S1.
000009    03 S       PIC X(1) OCCURS 100.
000010 01 i          PIC 9(3).
000011 01 mx         PIC S9(3).
000012 01 tmp        PIC S9(3).
000013 01 zs         PIC -(3)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT N.
000017   ACCEPT S1.
000018   MOVE ZERO TO mx.
000019   MOVE ZERO TO tmp.
000020   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000021     IF S(i) = 'I' THEN
000022       ADD 1 TO tmp
000023     ELSE
000024       SUBTRACT 1 FROM tmp
000025     END-IF
000026     COMPUTE mx = FUNCTION MAX(mx, tmp)
000027   END-PERFORM.
000028   MOVE mx TO zs.
000029   DISPLAY FUNCTION TRIM(zs).
000030   STOP RUN.

