000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_067_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 FLG        PIC 9(1).
000007 01 K          PIC 9(2).
000008 01 N          PIC 9(2).
000009 01 NK         PIC X(5).
000010 01 a          PIC 9(2).
000011 01 ans        PIC X(4).
000012 01 b          PIC 9(2).
000013 01 bk         PIC 9(2).
000014 01 cur        PIC 9(4) VALUE 1.
000015 01 edtmp      PIC 9(2).
000016 01 i          PIC 9(18).
000017 01 j          PIC 9(18).
000018 01 len        PIC 9(4).
000019 01 ln         PIC X(2550).
000020 01 maxlen     PIC 9(2).
000021 01 mx         PIC 9(4).
000022 01 nowidx     PIC 9(2) VALUE 0.
000023 01 num        PIC 9(3) VALUE 0.
000024 01 q          PIC 9(2).
000025 01 qary1.
000026    03 qary11 OCCURS 100.
000027       05 qary PIC 9(2).
000028 01 qfirst     PIC 9(2).
000029 01 qlast      PIC 9(2).
000030 01 ret        PIC 9(2).
000031 01 sidx       PIC 9(2) VALUE 0.
000032 01 stack1.
000033    03 stack11 OCCURS 1000.
000034       05 st   PIC 9(2).
000035       05 ed   PIC 9(2).
000036 01 sttmp      PIC 9(2).
000037 01 t          PIC 9(2).
000038 01 x          PIC 9(2).
000039 01 zs         PIC Z(5).
000040 
000041 PROCEDURE DIVISION.
000042   ACCEPT NK.
000043   UNSTRING NK DELIMITED BY SPACE INTO N K.
000044   ACCEPT ln.
000045   MOVE N TO maxlen.
000046   PERFORM VARYING i FROM 1 BY 1 UNTIL maxlen < i
000047     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000048     END-PERFORM
000049     COMPUTE len = j - cur
000050     MOVE ln(cur:len) TO qary(i)
000051     COMPUTE cur = j + 1
000052   END-PERFORM.
000053   MOVE 1 TO qfirst.
000054   MOVE N TO qlast.
000055   PERFORM PARTITION.
000056   MOVE 1 TO FLG.
000057   PERFORM UNTIL FLG = 0
000058     PERFORM QSORT
000059     IF FLG = 0 THEN
000060       IF nowidx < sidx THEN
000061         MOVE 1 TO FLG
000062         ADD 1 TO nowidx
000063         MOVE st(nowidx) TO qfirst
000064         MOVE ed(nowidx) TO qlast
000065         PERFORM PARTITION
000066       END-IF
000067     END-IF
000068   END-PERFORM.
000069   MOVE 0 TO mx.
000070   PERFORM VARYING i FROM N BY -1 UNTIL i <= N - K
000071     ADD qary(i) TO mx
000072   END-PERFORM.
000073   MOVE mx TO zs.
000074   DISPLAY FUNCTION TRIM(zs).
000075   STOP RUN.
000076 
000077 PARTITION SECTION.
000078   MOVE qary(qlast) TO x
000079   MOVE qfirst TO a
000080   SUBTRACT 1 FROM a
000081   PERFORM VARYING b FROM qfirst BY 1 UNTIL qlast <= b
000082     IF qary(b) <= x THEN
000083       ADD 1 TO a
000084       MOVE qary(a) TO t
000085       MOVE qary(b) TO qary(a)
000086       MOVE t TO qary(b)
000087     END-IF
000088   END-PERFORM
000089   ADD 1 TO a
000090   MOVE qary(a) TO t
000091   MOVE qary(qlast) TO qary(a)
000092   MOVE t TO qary(qlast)
000093   MOVE a TO q.
000094 
000095 QSORT SECTION.
000096   IF qfirst < qlast THEN
000097     MOVE q TO ret
000098     MOVE qlast TO bk
000099     SUBTRACT 1 FROM ret GIVING qlast
000100     ADD 1 ret GIVING sttmp
000101     MOVE bk TO edtmp
000102     IF sttmp < edtmp THEN
000103       ADD 1 TO sidx
000104       MOVE sttmp TO st(sidx)
000105       MOVE edtmp TO ed(sidx)
000106     END-IF
000107     IF qfirst < qlast THEN
000108       PERFORM PARTITION
000109     ELSE
000110       MOVE 0 TO FLG
000111     END-IF
000112   ELSE
000113     MOVE 0 TO FLG
000114   END-IF.

