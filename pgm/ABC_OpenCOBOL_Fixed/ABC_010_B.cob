000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_010_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 a          PIC 9(10).
000007 01 cnt        PIC 9(10) VALUE ZERO.
000008 01 cur        PIC 9(10) VALUE 1 COMP.
000009 01 d1         PIC 9(10).
000010 01 d2         PIC 9(10).
000011 01 flg        PIC 9(1).
000012 01 i          PIC 9(10) VALUE 1 COMP.
000013 01 j          PIC 9(10) COMP.
000014 01 len        PIC 9(10) COMP.
000015 01 ln         PIC X(400).
000016 01 maxlen     PIC 9(10) VALUE 100 COMP.
000017 01 r1         PIC 9(10).
000018 01 r2         PIC 9(10).
000019 01 n          PIC 9(10).
000020 01 zs         PIC Z(9)9.
000021 
000022 PROCEDURE DIVISION.
000023   ACCEPT N.
000024   ACCEPT ln.
000025   MOVE N TO maxlen.
000026   PERFORM maxlen TIMES
000027     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000028     END-PERFORM
000029     COMPUTE len = j - cur
000030     MOVE ln(cur:len) TO a
000031     MOVE ZERO TO flg
000032     PERFORM UNTIL 1 = flg
000033       DIVIDE a BY 2 GIVING d1 REMAINDER r1
000034       DIVIDE a BY 3 GIVING d2 REMAINDER r2
000035       IF ZERO NOT = r1 AND 2 NOT = r2 THEN
000036         MOVE 1 TO flg
000037       ELSE
000038         SUBTRACT 1 FROM a
000039         ADD 1 TO cnt
000040       END-IF
000041     END-PERFORM
000042     COMPUTE cur = j + 1
000043     ADD 1 TO i
000044   END-PERFORM.
000045   MOVE cnt TO zs.
000046   DISPLAY FUNCTION TRIM(zs).
000047   STOP RUN.

