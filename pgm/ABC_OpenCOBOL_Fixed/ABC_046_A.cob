000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_046_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 a          PIC 9(3).
000007 01 b          PIC 9(3).
000008 01 c          PIC 9(3).
000009 01 cnt1.
000010    03 cnt     PIC 9(3) OCCURS 100 VALUE ZERO.
000011 01 i          PIC 9(3).
000012 01 ln         PIC X(11).
000013 01 sm         PIC 9(1).
000014 01 zs         PIC Z(2).
000015 
000016 PROCEDURE DIVISION.
000017   ACCEPT ln.
000018   UNSTRING ln DELIMITED BY SPACE INTO a b c.
000019   ADD 1 TO cnt(a).
000020   ADD 1 TO cnt(b).
000021   ADD 1 TO cnt(c).
000022   PERFORM VARYING i FROM 1 BY 1 UNTIL 100 < i
000023     IF ZERO < cnt(i) THEN
000024       ADD 1 TO sm
000025     END-IF
000026   END-PERFORM.
000027   MOVE sm TO zs.
000028   DISPLAY FUNCTION TRIM(zs).
000029   STOP RUN.

