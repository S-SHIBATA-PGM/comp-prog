000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_115_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 D          PIC 9(10).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT D.
000010   EVALUATE D
000011     WHEN 25
000012       DISPLAY "Christmas"
000013     WHEN 24
000014       DISPLAY "Christmas Eve"
000015     WHEN 23
000016       DISPLAY "Christmas Eve Eve"
000017     WHEN OTHER
000018       DISPLAY "Christmas Eve Eve Eve"
000019   END-EVALUATE.
000020   STOP RUN.
