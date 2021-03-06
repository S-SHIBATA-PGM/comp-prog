000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_255_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A11.
000007    03 A1      OCCURS 2.
000008       05 A    PIC 9(10) OCCURS 2.
000009 01 C          PIC 9(10).
000010 01 R          PIC 9(10).
000011 01 i          PIC 9(10).
000012 01 ln         PIC X(30).
000013 01 zs         PIC Z(9)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED SPACE INTO R C.
000018   PERFORM VARYING i FROM 1 BY 1 UNTIL 2 < i
000019     ACCEPT ln
000020     UNSTRING ln DELIMITED SPACE INTO A(i 1) A(i 2)
000021   END-PERFORM.
000022   MOVE A(R C) TO zs.
000023   DISPLAY FUNCTION TRIM(zs).
000024   STOP RUN.

