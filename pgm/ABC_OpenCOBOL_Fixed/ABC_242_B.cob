000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_242_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(200000).
000013 01 REDEFINES INDATA.
000014    03 S       PIC X OCCURS 200000.
000015 WORKING-STORAGE SECTION.
000016 
000017 PROCEDURE DIVISION.
000018   OPEN INPUT SYSIN.
000019   READ SYSIN.
000020   CLOSE SYSIN.
000021   SORT S ASCENDING S.
000022   DISPLAY FUNCTION TRIM(INDATA).
000023   STOP RUN.
