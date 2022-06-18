000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_156_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 K            PIC 9(2).
000007 01 N            PIC 9(10).
000008 01 ans          PIC Z9.
000009 01 cnt          PIC 9(2).
000010 01 ln           PIC X(13).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED SPACE INTO N K.
000015   MOVE 1 TO cnt.
000016   PERFORM UNTIL N < K ** cnt
000017     ADD 1 TO cnt
000018   END-PERFORM.
000019   MOVE cnt TO ans.
000020   DISPLAY FUNCTION TRIM(ans).
000021   STOP RUN.

