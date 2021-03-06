000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_235_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(1100000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 H1.
000016    03 H       PIC 9(10) OCCURS 100000 DEPENDING N.
000017 01 N          PIC 9(10).
000018 01 ans        PIC 9(10) VALUE ZERO.
000019 01 i          PIC 9(10) COMP.
000020 01 pt         PIC S9(10) VALUE 1.
000021 01 zs         PIC Z(9)9.
000022 
000023 PROCEDURE DIVISION.
000024   OPEN INPUT SYSIN.
000025   READ SYSIN INTO N.
000026   READ SYSIN.
000027   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000028     UNSTRING INDATA DELIMITED SPACE INTO H(i) POINTER pt
000029   END-PERFORM.
000030   CLOSE SYSIN.
000031   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000032     IF ans < H(i) MOVE H(i) TO ans ELSE EXIT PERFORM
000033   END-PERFORM.
000034   MOVE ans TO zs.
000035   DISPLAY FUNCTION TRIM(zs).
000036   STOP RUN.

