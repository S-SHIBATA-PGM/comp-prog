000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_201_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A1.
000007    03 A       PIC 9(10) OCCURS 3.
000008 01 ans        PIC X(30).
000009 01 ln         PIC X(30).
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT ln.
000013   UNSTRING ln DELIMITED BY SPACE INTO A(1) A(2) A(3).
000014   SORT A ASCENDING A.
000015   IF A(3) - A(2) = A(2) - A(1) DISPLAY "Yes" ELSE DISPLAY "No".
000016   STOP RUN.

