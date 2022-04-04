000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_061_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(2).
000007 01 M          PIC 9(2).
000008 01 a          PIC 9(2).
000009 01 b          PIC 9(2).
000010 01 i          PIC 9(18).
000011 01 len        PIC 9(10).
000012 01 ln         PIC X(5).
000013 01 ln2        PIC X(10).
000014 01 town1.
000015    03 town11 OCCURS 50.
000016       05 town PIC 9(2) VALUE 0.
000017 01 zs         PIC Z(2)9.
000018 
000019 PROCEDURE DIVISION.
000020   ACCEPT ln.
000021   UNSTRING ln DELIMITED BY SPACE INTO N M.
000022   PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
000023     ACCEPT ln2
000024     UNSTRING ln2 DELIMITED BY SPACE INTO a b
000025     ADD 1 TO town(a)
000026     ADD 1 TO town(b)
000027   END-PERFORM.
000028   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000029     MOVE town(i) TO zs
000030     DISPLAY FUNCTION TRIM(zs)
000031   END-PERFORM.
000032   STOP RUN.
