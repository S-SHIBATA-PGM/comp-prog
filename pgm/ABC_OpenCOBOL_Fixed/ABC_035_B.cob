000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_035_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(100000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 S          PIC X(100000).
000016 01 T          PIC 9(10).
000017 01 a          PIC 9(10).
000018 01 d          PIC 9(10).
000019 01 dd         PIC 9(10).
000020 01 dm         PIC 9(10).
000021 01 i          PIC 9(10) COMP.
000022 01 j          PIC 9(10) COMP.
000023 01 len        PIC 9(10) COMP.
000024 01 ln         PIC X(400).
000025 01 mn         PIC 9(10).
000026 01 mx         PIC 9(10).
000027 01 q          PIC S9(10) VALUE ZERO COMP.
000028 01 x          PIC S9(10) VALUE ZERO COMP.
000029 01 y          PIC S9(10) VALUE ZERO COMP.
000030 01 zs         PIC Z(9)9.
000031 
000032 PROCEDURE DIVISION.
000033   OPEN INPUT SYSIN.
000034   READ SYSIN INTO S.
000035   READ SYSIN INTO T.
000036   CLOSE SYSIN.
000037   COMPUTE len = FUNCTION STORED-CHAR-LENGTH(S).
000038   PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
000039     EVALUATE S(i:1)
000040     WHEN "L"
000041       SUBTRACT 1 FROM x
000042     WHEN "R"
000043       ADD 1 TO x
000044     WHEN "U"
000045       ADD 1 TO y
000046     WHEN "D"
000047       SUBTRACT 1 FROM y
000048     WHEN OTHER
000049       ADD 1 TO q
000050     END-EVALUATE
000051   END-PERFORM.
000052   COMPUTE a = FUNCTION ABS(x) + FUNCTION ABS(y).
000053   COMPUTE mx = a + q.
000054   COMPUTE mn = a - q.
000055   IF a < q THEN
000056     COMPUTE d = q - a
000057     DIVIDE d BY 2 GIVING dd REMAINDER dm
000058     IF dm = 1 THEN
000059       MOVE 1 TO mn
000060     ELSE
000061       MOVE ZERO TO mn
000062     END-IF
000063   END-IF.
000064   IF 1 = T THEN
000065     MOVE mx TO zs
000066   ELSE
000067     MOVE mn TO zs
000068   END-IF.
000069   DISPLAY FUNCTION TRIM(zs).
000070   STOP RUN.

