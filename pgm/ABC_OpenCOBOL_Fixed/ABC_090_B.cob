000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_090_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006  01 AB1.
000007     03 AB11 OCCURS 2.
000008        05 AB  PIC 9(5).
000009  01 X         PIC X(6).
000010  01 cnt       PIC 9(5).
000011  01 cur       PIC 9(12) VALUE 1.
000012  01 i         PIC 9(18) VALUE 1.
000013  01 j         PIC 9(18).
000014  01 k         PIC 9(6).
000015  01 len       PIC 9(12).
000016  01 ln        PIC X(12).
000017  01 maxlen    PIC 9(1)  VALUE 2.
000018  01 zs        PIC Z(5)9.
000019 
000020 PROCEDURE DIVISION.
000021   ACCEPT ln.
000022   PERFORM maxlen TIMES
000023     PERFORM VARYING j FROM cur BY 1
000024       UNTIL ln(j:1) = SPACE
000025     END-PERFORM
000026     COMPUTE len = j - cur
000027     MOVE ln(cur:len) TO AB(i)
000028     COMPUTE cur = j + 1
000029     ADD 1 TO i
000030   END-PERFORM.
000031   MOVE 0 TO cnt.
000032   PERFORM VARYING k FROM AB(1) BY 1 UNTIL AB(2) < k
000033     MOVE k TO X
000034     IF X(2:1) = X(6:1) AND X(3:1) = X(5:1) THEN
000035       ADD 1 TO cnt
000036     END-IF
000037   END-PERFORM.
000038   MOVE cnt TO zs.
000039   DISPLAY FUNCTION TRIM(zs).
000040   STOP RUN.

