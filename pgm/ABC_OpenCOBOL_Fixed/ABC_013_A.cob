000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_013_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 X          PIC X(1).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT X.
000010   EVALUATE X
000011     WHEN "A"
000012       DISPLAY 1
000013     WHEN "B"
000014       DISPLAY 2
000015     WHEN "C"
000016       DISPLAY 3
000017     WHEN "D"
000018       DISPLAY 4
000019     WHEN "E"
000020       DISPLAY 5
000021     WHEN OTHER
000022       CONTINUE
000023   END-EVALUATE.
000024   STOP RUN.
