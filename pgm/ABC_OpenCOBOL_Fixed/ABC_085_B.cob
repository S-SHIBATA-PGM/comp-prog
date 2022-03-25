000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_085_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 FLG        PIC 9(1).
000007 01 N          PIC 9(3).
000008 01 a          PIC 9(3).
000009 01 b          PIC 9(3).
000010 01 bk         PIC 9(3).
000011 01 cnt        PIC 9(3) VALUE 0.
000012 01 edtmp      PIC 9(3).
000013 01 i          PIC 9(3).
000014 01 nowidx     PIC 9(4) VALUE 0.
000015 01 q          PIC 9(3).
000016 01 qary1.
000017    03 qary11 OCCURS 100.
000018       05 qary PIC 9(3).
000019 01 qfirst     PIC 9(3) VALUE 1.
000020 01 qlast      PIC 9(3).
000021 01 ret        PIC 9(3).
000022 01 sidx       PIC 9(4) VALUE 0.
000023 01 stack1.
000024    03 stack11 OCCURS 1000.
000025       05 st   PIC 9(3).
000026       05 ed   PIC 9(3).
000027 01 sttmp      PIC 9(3).
000028 01 t          PIC 9(3).
000029 01 tmp        PIC 9(3) VALUE 0.
000030 01 x          PIC 9(3).
000031 01 zs         PIC Z(4).
000032 
000033 PROCEDURE DIVISION.
000034   ACCEPT N.
000035   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000036     ACCEPT qary(i)
000037   END-PERFORM.
000038   MOVE N TO qlast.
000039   PERFORM PARTITION.
000040   MOVE 1 TO FLG.
000041   PERFORM UNTIL FLG = 0
000042     PERFORM QSORT
000043     IF FLG = 0 THEN
000044       IF nowidx < sidx THEN
000045         MOVE 1 TO FLG
000046         ADD 1 TO nowidx
000047         MOVE st(nowidx) TO qfirst
000048         MOVE ed(nowidx) TO qlast
000049         PERFORM PARTITION
000050       END-IF
000051     END-IF
000052   END-PERFORM.
000053   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000054     IF tmp < qary(i) THEN
000055       ADD 1 TO cnt
000056     END-IF
000057     MOVE qary(i) TO tmp
000058   END-PERFORM.
000059   MOVE cnt TO zs.
000060   DISPLAY FUNCTION TRIM(zs).
000061   STOP RUN.
000062 
000063 PARTITION SECTION.
000064   MOVE qary(qlast) TO x
000065   MOVE qfirst TO a
000066   SUBTRACT 1 FROM a
000067   PERFORM VARYING b FROM qfirst BY 1 UNTIL qlast <= b
000068     IF qary(b) <= x THEN
000069       ADD 1 TO a
000070       MOVE qary(a) TO t
000071       MOVE qary(b) TO qary(a)
000072       MOVE t TO qary(b)
000073     END-IF
000074   END-PERFORM
000075   ADD 1 TO a
000076   MOVE qary(a) TO t
000077   MOVE qary(qlast) TO qary(a)
000078   MOVE t TO qary(qlast)
000079   MOVE a TO q.
000080 
000081 QSORT SECTION.
000082   IF qfirst < qlast THEN
000083     MOVE q TO ret
000084     MOVE qlast TO bk
000085     SUBTRACT 1 FROM ret GIVING qlast
000086     ADD 1 ret GIVING sttmp
000087     MOVE bk TO edtmp
000088     IF sttmp < edtmp THEN
000089       ADD 1 TO sidx
000090       MOVE sttmp TO st(sidx)
000091       MOVE edtmp TO ed(sidx)
000092     END-IF
000093     IF qfirst < qlast THEN
000094       PERFORM PARTITION
000095     ELSE
000096       MOVE 0 TO FLG
000097     END-IF
000098   ELSE
000099     MOVE 0 TO FLG
000100   END-IF.
