000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_222_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA PIC X(400000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 N         PIC 9(10).
000016 01 P         PIC 9(10).
000017 01 a         PIC 9(10).
000018 01 ans       PIC 9(10) COMP.
000019 01 i         PIC 9(10) COMP.
000020 01 pt        PIC 9(10) VALUE 1.
000021 01 zs        PIC Z(9)9.
000022 
000023 PROCEDURE DIVISION.
000024   OPEN INPUT SYSIN.
000025   READ SYSIN.
000026   UNSTRING INDATA DELIMITED SPACE INTO N P.
000027   READ SYSIN.
000028   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000029     UNSTRING INDATA DELIMITED SPACE INTO a POINTER pt
000030     IF a < P ADD 1 TO ans
000031   END-PERFORM.
000032   CLOSE SYSIN.
000033   MOVE ans TO zs.
000034   DISPLAY FUNCTION TRIM(zs).
000035   STOP RUN.

