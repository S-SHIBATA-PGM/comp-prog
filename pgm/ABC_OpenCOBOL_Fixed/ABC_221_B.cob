000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_221_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(100).
000007 01 T          PIC X(100).
000008 01 cnt        PIC 9(10) VALUE ZERO.
000009 01 flg        PIC 9(10) VALUE ZERO.
000010 01 i          PIC 9(10) COMP.
000011 01 len        PIC 9(10).
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT S.
000015   ACCEPT T.
000016   MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
000017   PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
000018     IF S(i:1) NOT = T(i:1)
000019       IF ZERO < cnt MOVE 1 TO flg EXIT PERFORM
000020       ELSE IF ZERO = flg AND len = i MOVE 1 TO flg EXIT PERFORM
000021       ELSE IF ZERO = flg AND S(i:1) = T(i + 1:1)
000022       AND S(i + 1:1) = T(i:1) MOVE 1 TO flg
000023       ELSE IF 1 = flg MOVE ZERO TO flg ADD 1 TO cnt
000024       ELSE MOVE 1 TO flg EXIT PERFORM
000025   END-PERFORM.
000026   IF ZERO = flg DISPLAY "Yes" ELSE DISPLAY "No".
000027   STOP RUN.

