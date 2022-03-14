000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_098_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(3).
000007 01 S          PIC X(101).
000008 01 X1.
000009    03 XNUM    PIC 9(2) VALUE 0.
000010    03 X11 OCCURS 26.
000011       05 X    PIC X(1).
000012 01 Y1.
000013    03 YNUM    PIC 9(2) VALUE 0.
000014    03 Y11 OCCURS 26.
000015       05 Y    PIC X(1).
000016 01 ans        PIC Z9.
000017 01 chr        PIC X(1) VALUE SPACE.
000018 01 cnt        PIC 9(2) VALUE 0.
000019 01 cntmax     PIC 9(2) VALUE 0.
000020 01 cur        PIC 9(3).
000021 01 flg        PIC 9(1) VALUE 0.
000022 01 i          PIC 9(3).
000023 01 j          PIC 9(3).
000024 01 k          PIC 9(3).
000025 01 len        PIC 9(1) VALUE 1.
000026 01 str        PIC X(101) VALUE SPACE.
000027 
000028 PROCEDURE DIVISION.
000029   ACCEPT N.
000030   ACCEPT S.
000031   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000032     MOVE S(i : len) TO chr
000033     MOVE 0 TO flg
000034     PERFORM VARYING j FROM 1 BY 1 UNTIL XNUM < j
000035       IF X(j) = chr THEN
000036         MOVE 1 TO flg
000037       END-IF
000038     END-PERFORM
000039     IF flg = 0 THEN
000040       ADD 1 TO XNUM
000041       MOVE chr TO X(XNUM)
000042     END-IF
000043     INITIALIZE Y1
000044     COMPUTE cur = i + 1
000045     MOVE S(cur : N - i) TO str
000046     PERFORM VARYING j FROM 1 BY 1 UNTIL N - i < j
000047       MOVE str(j : len) TO chr
000048       MOVE 0 TO flg
000049       PERFORM VARYING k FROM 1 BY 1 UNTIL YNUM < k
000050         IF Y(k) = chr THEN
000051           MOVE 1 TO flg
000052         END-IF
000053       END-PERFORM
000054       IF flg = 0 THEN
000055         ADD 1 TO YNUM
000056         MOVE chr TO Y(YNUM)
000057       END-IF
000058     END-PERFORM
000059     MOVE 0 TO cnt
000060     PERFORM VARYING j FROM 1 BY 1 UNTIL XNUM < j
000061       PERFORM VARYING k FROM 1 BY 1 UNTIL YNUM < k
000062         IF X(j) = Y(k) THEN
000063           ADD 1 TO cnt
000064         END-IF
000065       END-PERFORM
000066     END-PERFORM
000067     COMPUTE cntmax = FUNCTION MAX(cntmax, cnt)
000068   END-PERFORM.
000069   MOVE cntmax TO ans.
000070   DISPLAY FUNCTION TRIM(ans).
000071   STOP RUN.

