000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_241_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(20000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 ln         PIC X(20000).
000016 01 maxlen     PIC 9(10) VALUE 100 COMP.
000017 01 cur        PIC 9(10) VALUE 1 COMP.
000018 01 i          PIC 9(10) VALUE 1 COMP.
000019 01 j          PIC 9(10) COMP.
000020 01 len        PIC 9(10) COMP.
000021 01 eat        PIC 9(10).
000022 01 num        PIC 9(10).
000023 01 conflg     PIC 9(1).
000024 01 extflg     PIC 9(1).
000025 01 ans        PIC 9(10).
000026 01 zs         PIC Z(9)9.
000027 01 N          PIC 9(10).
000028 01 M          PIC 9(10).
000029 01 A1.
000030    03 A11 OCCURS 1000 DEPENDING N INDEXED aix.
000031       05 A    PIC 9(10).
000032       05 C    PIC 9(10) VALUE ZERO.
000033 01 B1.
000034    03 B11 OCCURS 1000 DEPENDING M.
000035       05 B    PIC 9(10).
000036 
000037 PROCEDURE DIVISION.
000038   ACCEPT ln.
000039   UNSTRING ln DELIMITED SPACE INTO N M.
000040   OPEN INPUT SYSIN.
000041 
000042   READ SYSIN INTO ln.
000043   MOVE N TO maxlen.
000044   PERFORM maxlen TIMES
000045     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000046     END-PERFORM
000047     COMPUTE len = j - cur
000048     MOVE ln(cur:len) TO A(i)
000049     COMPUTE cur = j + 1
000050     ADD 1 TO i
000051   END-PERFORM.
000052 
000053   READ SYSIN INTO ln.
000054   MOVE M TO maxlen.
000055   MOVE 1 TO cur.
000056   MOVE 1 TO i.
000057   PERFORM maxlen TIMES
000058     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000059     END-PERFORM
000060     COMPUTE len = j - cur
000061     MOVE ln(cur:len) TO B(i)
000062     COMPUTE cur = j + 1
000063     ADD 1 TO i
000064   END-PERFORM.
000065 
000066 
000067   PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
000068     SET aix TO 1
000069     PERFORM UNTIL N < aix
000070       MOVE ZERO TO conflg
000071       MOVE ZERO TO extflg
000072       SEARCH A11
000073         WHEN A(aix) = B(i)
000074           IF 1 = C(aix)
000075             MOVE 1 TO conflg
000076             MOVE ZERO TO extflg
000077           ELSE
000078             MOVE ZERO TO conflg
000079             MOVE 1 TO extflg
000080             MOVE 1 TO C(aix)
000081           END-IF
000082           SET aix UP BY 1
000083       END-SEARCH
000084       IF ZERO = conflg
000085         EXIT PERFORM
000086       END-IF
000087     END-PERFORM
000088     IF ZERO = extflg
000089       EXIT PERFORM
000090     END-IF
000091   END-PERFORM.
000092 
000093   IF 1 = extflg and i = M + 1
000094     DISPLAY "Yes"
000095   ELSE
000096     DISPLAY "No"
000097   END-IF.
000098   STOP RUN.
