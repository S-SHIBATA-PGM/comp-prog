000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_195_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 H         PIC 9(10).
000007 01 M         PIC 9(10).
000008 01 d         PIC 9(10).
000009 01 ln        PIC X(30).
000010 01 r         PIC 9(10).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED SPACE INTO M H.
000015   DIVIDE H BY M GIVING d REMAINDER r.
000016   IF ZERO = r THEN
000017     DISPLAY "Yes"
000018   ELSE
000019     DISPLAY "No"
000020   END-IF.
000021   STOP RUN.

