000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_100_C.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(110000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 N          PIC 9(5).
000016 01 a          PIC 9(10).
000017 01 cur        PIC 9(6) VALUE 1.
000018 01 i          PIC 9(18) VALUE 1.
000019 01 j          PIC 9(18).
000020 01 len        PIC 9(6).
000021 01 ln         PIC X(110000).
000022 01 maxlen     PIC 9(6) VALUE 110000.
000023 01 num        PIC 9(2).
000024 01 r          PIC 9(1).
000025 01 sm         PIC 9(6).
000026 01 zs         PIC Z(6)9.
000027 
000028 PROCEDURE DIVISION.
000029   ACCEPT N.
000030   OPEN INPUT SYSIN.
000031   READ SYSIN INTO ln.
000032   CLOSE SYSIN.
000033   MOVE N TO maxlen.
000034   PERFORM maxlen TIMES
000035     PERFORM VARYING j FROM cur BY 1
000036       UNTIL ln(j:1) = SPACE
000037     END-PERFORM
000038     COMPUTE len = j - cur
000039     MOVE ln(cur:len) TO a
000040     PERFORM GETNUM
000041     ADD num TO sm
000042     COMPUTE cur = j + 1
000043     ADD 1 TO i
000044   END-PERFORM.
000045   MOVE sm TO zs.
000046   DISPLAY FUNCTION TRIM(zs).
000047   STOP RUN.
000048 
000049 GETNUM SECTION.
000050   MOVE ZERO TO num
000051   PERFORM UNTIL ZERO = a
000052     DIVIDE 2 INTO a GIVING a REMAINDER r
000053     IF ZERO = r THEN
000054       ADD 1 TO NUM
000055     ELSE
000056       EXIT PERFORM
000057     END-IF
000058   END-PERFORM.

