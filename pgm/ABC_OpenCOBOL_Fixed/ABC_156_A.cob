000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_156_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N            PIC 9(3).
000007 01 R            PIC 9(4).
000008 01 ans          PIC Z(3)9.
000009 01 ln           PIC X(8).
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT ln.
000013   UNSTRING ln DELIMITED SPACE INTO N R.
000014   IF 10 <= N
000015     MOVE R TO ans
000016   ELSE
000017     COMPUTE ans = R + 100 * (10 - N)
000018   END-IF.
000019   DISPLAY ans.
000020   STOP RUN.

