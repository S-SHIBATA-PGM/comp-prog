000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_207_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 C          PIC 9(10).
000009 01 D          PIC 9(10).
000010 01 ans        PIC -(9)9.
000011 01 dv         PIC 9(10).
000012 01 dvr        PIC 9(10).
000013 01 ln         PIC X(30).
000014 01 rm         PIC 9(10).
000015 
000016 PROCEDURE DIVISION.
000017   ACCEPT ln.
000018   UNSTRING ln DELIMITED SPACE INTO A B C D.
000019   COMPUTE dvr = C * D - B.
000020   DIVIDE A BY dvr GIVING dv REMAINDER rm.
000021   IF ZERO < rm ADD 1 TO dv.
000022   IF C * D <= B MOVE -1 TO ans ELSE MOVE dv TO ans.
000023   DISPLAY FUNCTION TRIM(ans).
000024   STOP RUN.

