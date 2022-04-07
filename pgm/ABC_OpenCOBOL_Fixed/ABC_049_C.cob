000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_049_C.
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
000016 01 bklen      PIC 9(6).
000017 01 d          PIC X(5) VALUE "dream".
000018 01 dlen       PIC 9(1).
000019 01 dr         PIC X(7) VALUE "dreamer".
000020 01 drlen      PIC 9(1).
000021 01 e          PIC X(5) VALUE "erase".
000022 01 elen       PIC 9(1).
000023 01 er         PIC X(6) VALUE "eraser".
000024 01 erlen      PIC 9(1).
000025 01 flg        PIC 9(1) VALUE ZERO.
000026 01 len        PIC 9(6).
000027 01 word       PIC X(7).
000028 01 wordlen    PIC 9(1).
000029 
000030 PROCEDURE DIVISION.
000031   OPEN INPUT SYSIN.
000032   READ SYSIN INTO S.
000033   CLOSE SYSIN.
000034   COMPUTE drlen = FUNCTION STORED-CHAR-LENGTH(dr).
000035   COMPUTE erlen = FUNCTION STORED-CHAR-LENGTH(er).
000036   COMPUTE dlen = FUNCTION STORED-CHAR-LENGTH(d).
000037   COMPUTE elen = FUNCTION STORED-CHAR-LENGTH(e).
000038   COMPUTE len = FUNCTION STORED-CHAR-LENGTH(S).
000039   MOVE ZERO TO bklen.
000040   PERFORM UNTIL flg NOT = ZERO
000041     IF len = ZERO THEN
000042       MOVE 1 TO flg
000043     END-IF
000044     IF len = bklen THEN
000045       EXIT PERFORM
000046     END-IF
000047     MOVE len TO bklen
000048     MOVE dr TO word
000049     MOVE drlen TO wordlen
000050     PERFORM ERASEWORD
000051     MOVE er TO word
000052     MOVE erlen TO wordlen
000053     PERFORM ERASEWORD
000054     MOVE d TO word
000055     MOVE dlen TO wordlen
000056     PERFORM ERASEWORD
000057     MOVE e TO word
000058     MOVE elen TO wordlen
000059     PERFORM ERASEWORD
000060   END-PERFORM.
000061   IF flg = 1 THEN
000062     DISPLAY "YES"
000063   ELSE
000064     DISPLAY "NO"
000065   END-IF.
000066   STOP RUN.
000067 
000068 ERASEWORD SECTION.
000069   IF ZERO <= len - wordlen THEN
000070     IF S(len - wordlen + 1:wordlen) = word THEN
000071       MOVE ALL SPACE TO S(len - wordlen + 1:wordlen)
000072     END-IF
000073   END-IF.
000074   COMPUTE len = FUNCTION STORED-CHAR-LENGTH(S).

