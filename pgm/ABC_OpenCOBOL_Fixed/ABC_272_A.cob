000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_272_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 N          PIC 9(10).
000008 01 i          PIC 9(10) COMP.
000009 01 ln         PIC X(400).
000010 01 num        PIC 9(10).
000011 01 pt         PIC S9(10) VALUE 1.
000012 01 zs         PIC Z(9)9.
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT N.
000016   ACCEPT ln
000017   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000018     UNSTRING ln DELIMITED SPACE INTO A POINTER pt
000019     ADD A TO num
000020   END-PERFORM.
000021   MOVE num TO zs.
000022   DISPLAY FUNCTION TRIM(zs).
000023   STOP RUN.

