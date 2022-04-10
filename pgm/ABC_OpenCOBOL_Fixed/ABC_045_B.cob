000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_045_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 SA1.
000007    03 SA      PIC X(1) OCCURS 100.
000008 01 SB1.
000009    03 SB      PIC X(1) OCCURS 100.
000010 01 SC1.
000011    03 SC      PIC X(1) OCCURS 100.
000012 01 aidx       PIC 9(3) VALUE ZERO.
000013 01 alen       PIC 9(3).
000014 01 bidx       PIC 9(3) VALUE ZERO.
000015 01 blen       PIC 9(3).
000016 01 cidx       PIC 9(3) VALUE ZERO.
000017 01 clen       PIC 9(3).
000018 01 flg        PIC X(1) VALUE ZERO.
000019 01 now        PIC X(1) VALUE SPACE.
000020 01 winner     PIC X(1).
000021 
000022 PROCEDURE DIVISION.
000023   ACCEPT SA1.
000024   ACCEPT SB1.
000025   ACCEPT SC1.
000026   MOVE 'a' TO now.
000027   COMPUTE alen = FUNCTION STORED-CHAR-LENGTH(SA1).
000028   COMPUTE blen = FUNCTION STORED-CHAR-LENGTH(SB1).
000029   COMPUTE clen = FUNCTION STORED-CHAR-LENGTH(SC1).
000030   PERFORM UNTIL flg = 1
000031     IF now = 'a' THEN
000032       ADD 1 TO aidx
000033       MOVE SA(aidx) TO now
000034       IF alen < aidx THEN
000035         MOVE 'A' TO winner
000036         EXIT PERFORM
000037       END-IF
000038     ELSE
000039       IF now = 'b' THEN
000040         ADD 1 TO bidx
000041         MOVE SB(bidx) TO now
000042         IF blen < bidx THEN
000043           MOVE 'B' TO winner
000044           EXIT PERFORM
000045         END-IF
000046       ELSE
000047         ADD 1 TO cidx
000048         MOVE SC(cidx) TO now
000049         IF clen < cidx THEN
000050           MOVE 'C' TO winner
000051           EXIT PERFORM
000052         END-IF
000053       END-IF
000054     END-IF
000055   END-PERFORM.
000056   DISPLAY winner.
000057   STOP RUN.

