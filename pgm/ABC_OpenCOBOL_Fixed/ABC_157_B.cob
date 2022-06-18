000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_157_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(3).
000007 01 ans        PIC Z(2)9.
000008 01 cur        PIC 9(10) VALUE 1.
000009 01 flg        PIC 9(1) VALUE 0.
000010 01 i          PIC 9(18) VALUE 1.
000011 01 j          PIC 9(18).
000012 01 jix        PIC 9(18) VALUE 1.
000013 01 len        PIC 9(10).
000014 01 ln         PIC X(399).
000015 01 naname1.
000016     03 naname11 OCCURS 2.
000017         05 naname PIC 9(3) VALUE 0.
000018 01 nm         PIC 9(3).
000019 01 num        PIC 9(1) VALUE 3.
000020 01 tate1.
000021     03 tate11 OCCURS 3.
000022         05 tate PIC 9(3) VALUE 0.
000023 01 x1.
000024     03 x11 OCCURS 100 DEPENDING ON N.
000025         05 x  PIC S9(3) VALUE -1.
000026 01 y1.
000027     03 y11 OCCURS 100 DEPENDING ON N.
000028         05 y  PIC S9(3) VALUE -1.
000029 01 yoko1.
000030     03 yoko11 OCCURS 3.
000031         05 yoko PIC 9(3) VALUE 0.
000032 
000033 PROCEDURE DIVISION.
000034   PERFORM num TIMES
000035     ACCEPT ln
000036     MOVE 1 TO cur
000037     MOVE 1 TO jix
000038     PERFORM num TIMES
000039       PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000040       END-PERFORM
000041       COMPUTE len = j - cur
000042       MOVE ln(cur:len) TO nm
000043       MOVE i TO y(nm)
000044       MOVE jix TO x(nm)
000045       COMPUTE cur = j + 1
000046       ADD 1 TO jix
000047     END-PERFORM
000048     ADD 1 TO i
000049   END-PERFORM.
000050   ACCEPT N.
000051   PERFORM N TIMES
000052     ACCEPT nm
000053     IF y(nm) NOT = -1
000054       ADD 1 TO yoko(y(nm))
000055       IF num = yoko(y(nm))
000056         MOVE 1 TO flg
000057         EXIT PERFORM
000058       END-IF
000059       ADD 1 TO tate(x(nm))
000060       IF num = tate(x(nm))
000061         MOVE 1 TO flg
000062         EXIT PERFORM
000063       END-IF
000064       IF y(nm) = x(nm)
000065         ADD 1 TO naname(1)
000066         IF num = naname(1)
000067           MOVE 1 TO flg
000068           EXIT PERFORM
000069         END-IF
000070       END-IF
000071       IF y(nm) = num - x(nm) + 1
000072         ADD 1 TO naname(2)
000073         IF num = naname(2)
000074           MOVE 1 TO flg
000075           EXIT PERFORM
000076         END-IF
000077       END-IF
000078     END-IF
000079   END-PERFORM.
000080   IF flg = 1
000081     DISPLAY "Yes"
000082   ELSE
000083     DISPLAY "No"
000084   END-IF.
000085   STOP RUN.

