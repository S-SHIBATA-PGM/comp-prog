000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_041_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 s          PIC X(100).
000007 01 i          PIC 9(3).
000008 
000009 PROCEDURE DIVISION.
000010   ACCEPT s.
000011   ACCEPT i.
000012   DISPLAY s(i:1).
000013   STOP RUN.

