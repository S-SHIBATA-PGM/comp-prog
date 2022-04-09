000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_048_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 a          PIC 9(19).
000007 01 b          PIC 9(19).
000008 01 ln         PIC X(59).
000009 01 q1         PIC 9(19).
000010 01 q2         PIC 9(19).
000011 01 r          PIC 9(19).
000012 01 x          PIC 9(19).
000013 01 zs         PIC Z(19)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED BY SPACE INTO a b x.
000018   DIVIDE x INTO a GIVING q1 REMAINDER r.
000019   DIVIDE x INTO b GIVING q2.
000020   SUBTRACT q1 FROM q2.
000021   IF r = 0 THEN
000022     ADD 1 TO q2
000023   END-IF.
000024   MOVE q2 TO zs.
000025   DISPLAY FUNCTION TRIM(zs).
000026   STOP RUN.

