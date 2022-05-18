000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_207_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ABC1.
000007    03 ABC     PIC 9(10) OCCURS 3.
000008 01 ans        PIC Z(9)9.
000009 01 i          PIC 9(10) COMP.
000010 01 ln         PIC X(30).
000011 01 pt         PIC S9(10) VALUE 1.
000012 01 zs         PIC Z(9)9.
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT ln.
000016   PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
000017     UNSTRING ln DELIMITED SPACE INTO ABC(i) POINTER pt
000018   END-PERFORM.
000019   SORT ABC DESCENDING ABC.
000020   COMPUTE ans = ABC(1) + ABC(2).
000021   DISPLAY FUNCTION TRIM(ans).
000022   STOP RUN.

