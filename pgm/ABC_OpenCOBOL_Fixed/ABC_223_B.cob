000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_223_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S         PIC X(2000).
000007 01 ary1.
000008    03 ary    PIC X(1000) OCCURS 1000 DEPENDING len.
000009 01 i         PIC 9(10) COMP.
000010 01 len       PIC 9(10).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT S.
000014   MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
000015   STRING
000016     FUNCTION TRIM(S)
000017     FUNCTION TRIM(S)
000018     INTO S
000019   END-STRING.
000020   PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
000021     MOVE S(i:len) TO ary(i)
000022   END-PERFORM.
000023   SORT ary ASCENDING ary.
000024   DISPLAY FUNCTION TRIM(ary(1)).
000025   DISPLAY FUNCTION TRIM(ary(len)).
000026   STOP RUN.

