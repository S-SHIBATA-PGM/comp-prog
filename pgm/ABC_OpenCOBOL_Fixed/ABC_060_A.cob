000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_060_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC X(10).
000007 01 B          PIC X(10).
000008 01 C          PIC X(10).
000009 01 ln         PIC X(32).
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT ln.
000013   UNSTRING ln DELIMITED BY SPACE INTO A B C.
000014   IF A(FUNCTION STORED-CHAR-LENGTH(A):1) = B(1:1)
000015     AND B(FUNCTION STORED-CHAR-LENGTH(B):1) = C(1:1) THEN
000016     DISPLAY "YES"
000017   ELSE
000018     DISPLAY "NO"
000019   END-IF.
000020   STOP RUN.
