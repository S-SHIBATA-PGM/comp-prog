000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_042_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 L          PIC 9(3).
000007 01 N          PIC 9(3).
000008 01 S1.
000009    03 S11 OCCURS 100 DEPENDING ON N.
000010       05 S    PIC X(100).
000011 01 ans        PIC X(10000).
000012 01 i          PIC 9(3).
000013 01 j          PIC 9(3).
000014 01 ln         PIC X(7).
000015 01 p          PIC 9(5).
000016 01 st         PIC 9(3).
000017 01 tmp        PIC X(100).
000018 
000019 PROCEDURE DIVISION.
000020   ACCEPT ln.
000021   UNSTRING ln DELIMITED BY SPACE INTO N L.
000022   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000023     ACCEPT S(i)
000024   END-PERFORM.
000025   SORT S11 ON ASCENDING KEY S.
000026   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000027     COMPUTE p = L * (i - 1) + 1
000028     STRING
000029       S(i)(1:L)
000030       INTO ans WITH POINTER p
000031     END-STRING
000032   END-PERFORM.
000033   DISPLAY ans(1:FUNCTION STORED-CHAR-LENGTH(ans)).
000034   STOP RUN.

