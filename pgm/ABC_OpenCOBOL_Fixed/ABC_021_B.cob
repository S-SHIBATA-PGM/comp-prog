000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_021_B.
000003
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 K          PIC 9(10).
000007 01 N          PIC 9(10).
000008 01 P1.
000009    03 P PIC 9(1) VALUE ZERO OCCURS 100.
000010 01 a          PIC 9(10).
000011 01 b          PIC 9(10).
000012 01 cur        PIC 9(10) VALUE 1.
000013 01 flg        PIC 9(1) VALUE ZERO.
000014 01 i          PIC 9(10).
000015 01 j          PIC 9(10).
000016 01 len        PIC 9(3).
000017 01 ln         PIC X(400).
000018 01 num        PIC 9(10).
000019
000020 PROCEDURE DIVISION.
000021   ACCEPT N.
000022   ACCEPT ln.
000023   UNSTRING ln DELIMITED BY SPACE INTO a b.
000024   MOVE 1 TO P(a).
000025   MOVE 1 TO P(b).
000026   ACCEPT K.
000027   ACCEPT ln.
000028   PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
000029     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000030     END-PERFORM
000031     COMPUTE len = j - cur
000032     MOVE ln(cur:len) TO num
000033     IF 1 = P(num) THEN
000034       MOVE 1 TO flg
000035       EXIT PERFORM
000036     END-IF
000037     MOVE 1 TO P(num)
000038     COMPUTE cur = j + 1
000039   END-PERFORM.
000040   IF ZERO = flg THEN
000041     DISPLAY "YES"
000042   ELSE
000043     DISPLAY "NO"
000044   END-IF.
000045   STOP RUN.

