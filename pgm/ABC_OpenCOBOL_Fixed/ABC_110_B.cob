000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_110_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(400).
000007 01 maxlen     PIC 9(10) VALUE 100 COMP.
000008 01 maxlenm    PIC 9(10) VALUE 100 COMP.
000009 01 cur        PIC 9(10) VALUE 1 COMP.
000010 01 curm       PIC 9(10) VALUE 1 COMP.
000011 01 i          PIC 9(10) VALUE 1 COMP.
000012 01 j          PIC 9(10) COMP.
000013 01 k          PIC 9(10) VALUE 1 COMP.
000014 01 l          PIC 9(10) COMP.
000015 01 len        PIC 9(10) COMP.
000016 01 N          PIC 9(10).
000017 01 M          PIC 9(10).
000018 01 X          PIC S9(10).
000019 01 Y          PIC S9(10).
000020 01 A1.
000021    03 A11 OCCURS 101 DEPENDING ON N.
000022       05 A    PIC S9(10) VALUE -1000000007.
000023 01 B1.
000024    03 B11 OCCURS 101 DEPENDING ON M.
000025       05 B    PIC S9(10) VALUE 1000000007.
000026 
000027 PROCEDURE DIVISION.
000028   ACCEPT ln.
000029   UNSTRING ln DELIMITED BY SPACE INTO N M X Y.
000030 
000031   ACCEPT ln
000032   MOVE N TO maxlen.
000033 
000034   PERFORM maxlen TIMES
000035     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000036     END-PERFORM
000037     COMPUTE len = j - cur
000038     IF ln(cur:1) NOT = "-"
000039         MOVE ln(cur:len) TO A(i)
000040     ELSE
000041         ADD 1 TO cur
000042         SUBTRACT 1 FROM len
000043         MOVE ln(cur:len) TO A(i)
000044         COMPUTE A(i) = -A(i)
000045     END-IF
000046     COMPUTE cur = j + 1
000047     ADD 1 TO i
000048   END-PERFORM.
000049 
000050   ADD 1 TO N.
000051   MOVE X TO A(i).
000052   SORT A11 DESCENDING A.
000053 
000054   ACCEPT ln
000055   MOVE M TO maxlen.
000056 
000057   PERFORM maxlen TIMES
000058     PERFORM VARYING l FROM curm BY 1 UNTIL ln(l:1) = SPACE
000059     END-PERFORM
000060     COMPUTE len = l - curm
000061     IF ln(curm:1) NOT = "-"
000062         MOVE ln(curm:len) TO B(k)
000063     ELSE
000064         ADD 1 TO curm
000065         SUBTRACT 1 FROM len
000066         MOVE ln(curm:len) TO B(k)
000067         COMPUTE B(k) = -B(k)
000068     END-IF
000069     COMPUTE curm = l + 1
000070     ADD 1 TO k
000071   END-PERFORM.
000072 
000073   ADD 1 TO M.
000074   MOVE Y TO B(k).
000075   SORT B11 ASCENDING B.
000076 
000077   IF A(1) < B(1)
000078     DISPLAY "No War"
000079   ELSE
000080     DISPLAY "War"
000081   END-IF.
000082 
000083   STOP RUN.
