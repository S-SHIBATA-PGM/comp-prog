000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_029_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 W         PIC X(30).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT W.
000010   STRING
000011     FUNCTION TRIM(W)
000012     "s"
000013     INTO W
000014   END-STRING.
000015   DISPLAY FUNCTION TRIM(W).
000016   STOP RUN.

