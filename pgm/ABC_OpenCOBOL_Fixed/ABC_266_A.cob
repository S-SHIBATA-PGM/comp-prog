000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_266_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(100).
000007 01 len        PIC 9(10).
000008 
000009 PROCEDURE DIVISION.
000010   ACCEPT S.
000011   MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
000012   DISPLAY S((len + 1) / 2 : 1).
000013   STOP RUN.

