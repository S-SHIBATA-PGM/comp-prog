000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_109_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(10).
000007 01 maxlen     PIC 9(10) VALUE 100 COMP.
000008 01 cur        PIC 9(10) VALUE 1 COMP.
000009 01 i          PIC 9(10) VALUE 1 COMP.
000010 01 j          PIC 9(10) COMP.
000011 01 len        PIC 9(10) COMP.
000012 01 ans        PIC 9(10).
000013 01 zs         PIC Z(9)9.
000014 01 flg        PIC 9(10).
000015 01 N          PIC 9(10).
000016 01 W1.
000017    03 W11 OCCURS 100 DEPENDING ON N INDEXED BY XW.
000018       05 W    PIC X(10).
000019 
000020 PROCEDURE DIVISION.
000021   ACCEPT N.
000022   MOVE N TO maxlen.
000023   PERFORM maxlen TIMES
000024     ACCEPT ln
000025     MOVE ZERO TO flg
000026     SET XW TO 1
000027     SEARCH W11 VARYING XW
000028       WHEN W(XW) = ln
000029         MOVE 1 TO flg
000030     END-SEARCH
000031     IF 1 = flg
000032       EXIT PERFORM
000033     END-IF
000034     IF 1 NOT = i
000035       IF W(i - 1)(FUNCTION STORED-CHAR-LENGTH(W(i - 1)):1)
000036       NOT = ln(1:1)
000037         MOVE 1 TO flg
000038         EXIT PERFORM
000039       END-IF
000040     END-IF
000041     MOVE ln TO W(i)
000042     ADD 1 TO i
000043   END-PERFORM.
000044   IF 1 = flg
000045     DISPLAY "No"
000046   ELSE
000047     DISPLAY "Yes"
000048   END-IF.
000049   STOP RUN.