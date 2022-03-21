000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_083_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(11).
000007 01 A          PIC 9(2).
000008 01 B          PIC 9(2).
000009 01 C          PIC 9(2).
000010 01 D          PIC 9(2).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED BY SPACE INTO A B C D.
000015   IF A + B < C + D THEN
000016     DISPLAY "Right"
000017   ELSE
000018     IF A + B = C + D THEN
000019       DISPLAY "Balanced"
000020     ELSE
000021       DISPLAY "Left"
000022     END-IF
000023   END-IF.
000024   STOP RUN.

