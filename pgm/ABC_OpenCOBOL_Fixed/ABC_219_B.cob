000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_219_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S1.
000007    03 S       PIC X(10) OCCURS 3.
000008 01 T          PIC X(1000).
000009 01 ans        PIC X(11000).
000010 01 i          PIC 9(10) COMP.
000011 01 j          PIC 9(10) VALUE 1.
000012 01 len        PIC 9(10).
000013 01 slen1.
000014    03 slen    PIC 9(10) OCCURS 3.
000015 
000016 PROCEDURE DIVISION.
000017   ACCEPT S(1).
000018   ACCEPT S(2).
000019   ACCEPT S(3).
000020   ACCEPT T.
000021   MOVE FUNCTION STORED-CHAR-LENGTH(T) TO len.
000022   MOVE FUNCTION STORED-CHAR-LENGTH(S(1)) TO slen(1).
000023   MOVE FUNCTION STORED-CHAR-LENGTH(S(2)) TO slen(2).
000024   MOVE FUNCTION STORED-CHAR-LENGTH(S(3)) TO slen(3).
000025   PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
000026     MOVE FUNCTION TRIM(S(FUNCTION NUMVAL(T(i:1))))
000027     TO ans(j:slen(FUNCTION NUMVAL(T(i:1))))
000028     COMPUTE j = j + slen(FUNCTION NUMVAL(T(i:1)))
000029   END-PERFORM.
000030   DISPLAY FUNCTION TRIM(ans).
000031   STOP RUN.
