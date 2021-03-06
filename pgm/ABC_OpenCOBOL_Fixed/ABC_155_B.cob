000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_155_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A            PIC 9(4) VALUE 1.
000007 01 N            PIC 9(3).
000008 01 cur          PIC 9(10) VALUE 1.
000009 01 flg          PIC 9(1) VALUE 1.
000010 01 i            PIC 9(18) VALUE 1.
000011 01 j            PIC 9(18).
000012 01 len          PIC 9(10).
000013 01 ln           PIC X(500).
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT N.
000017   ACCEPT ln.
000018   PERFORM N TIMES
000019     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000020     END-PERFORM
000021     COMPUTE len = j - cur
000022     MOVE ln(cur:len) TO A
000023     IF FUNCTION MOD(A 2) = ZERO
000024     AND FUNCTION MOD(A 3) NOT = ZERO
000025     AND FUNCTION MOD(A 5) NOT = ZERO
000026       MOVE ZERO TO flg
000027       EXIT PERFORM
000028     END-IF
000029     COMPUTE cur = j + 1
000030     ADD 1 TO i
000031   END-PERFORM.
000032   IF flg = 1
000033     DISPLAY "APPROVED"
000034   ELSE
000035     DISPLAY "DENIED"
000036   END-IF.
000037   STOP RUN.

