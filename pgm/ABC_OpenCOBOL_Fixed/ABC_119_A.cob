000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_119_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(8).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT S.
000010   IF S <= "2019/04/30"
000011     DISPLAY "Heisei"
000012   ELSE
000013     DISPLAY "TBD"
000014   END-IF.
000015   STOP RUN.
