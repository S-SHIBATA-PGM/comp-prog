000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_176_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(200001).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 N          PIC X(200001).
000016 01 d          PIC 9(10).
000017 01 i          PIC 9(10) VALUE 1 COMP.
000018 01 len        PIC 9(10).
000019 01 r          PIC 9(10).
000020 01 num        PIC 9(10) VALUE ZERO.
000021 
000022 PROCEDURE DIVISION.
000023   OPEN INPUT SYSIN.
000024   READ SYSIN INTO N.
000025   CLOSE SYSIN.
000026   MOVE FUNCTION STORED-CHAR-LENGTH(N) TO len
000027   PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
000028     ADD FUNCTION NUMVAL(N(i:1)) TO num
000029   END-PERFORM.
000030   DIVIDE num BY 9 GIVING d REMAINDER r.
000031   IF ZERO = r THEN
000032     DISPLAY "Yes"
000033   ELSE
000034     DISPLAY "No"
000035   END-IF.
000036   STOP RUN.

