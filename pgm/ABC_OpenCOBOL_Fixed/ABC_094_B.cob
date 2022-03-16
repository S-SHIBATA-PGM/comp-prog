000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_094_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A1.
000007    03 A11 OCCURS 100.
000008       05 A    PIC 9(3) VALUE 0.
000009 01 NMX1.
000010    03 NMX11 OCCURS 3.
000011       05 NMX  PIC 9(3).
000012 01 cur        PIC 9(3) VALUE 1.
000013 01 i          PIC 9(18) VALUE 1.
000014 01 j          PIC 9(18).
000015 01 len        PIC 9(2).
000016 01 ln         PIC X(12).
000017 01 ln2        PIC X(401).
000018 01 m          PIC 9(3).
000019 01 maxlen     PIC 9(3) VALUE 3.
000020 01 n          PIC 9(3).
000021 01 sm         PIC 9(3) VALUE 101.
000022 01 tmp        PIC 9(3).
000023 01 x          PIC 9(3).
000024 01 zs         PIC Z(3)9.
000025 
000026 PROCEDURE DIVISION.
000027   ACCEPT ln.
000028   ACCEPT ln2.
000029   PERFORM maxlen TIMES
000030     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000031     END-PERFORM
000032     COMPUTE len = j - cur
000033     MOVE ln(cur:len) TO NMX(i)
000034     COMPUTE cur = j + 1
000035     ADD 1 TO i
000036   END-PERFORM.
000037   MOVE 1 TO cur.
000038   MOVE NMX(2) TO maxlen.
000039   PERFORM maxlen TIMES
000040     PERFORM VARYING j FROM cur BY 1 UNTIL ln2(j:1) = SPACE
000041     END-PERFORM
000042     COMPUTE len = j - cur
000043     MOVE ln2(cur:len) TO x
000044     MOVE 1 TO A(x)
000045     COMPUTE cur = j + 1
000046   END-PERFORM.
000047   MOVE 0 TO tmp.
000048   PERFORM VARYING m FROM NMX(3) BY 1 UNTIL NMX(1) < m
000049     ADD A(m) TO tmp
000050   END-PERFORM.
000051   COMPUTE sm = FUNCTION MIN(sm, tmp).
000052   MOVE 0 TO tmp.
000053   PERFORM VARYING n FROM NMX(3) BY -1 UNTIL n <= 0
000054     ADD A(n) TO tmp
000055   END-PERFORM.
000056   COMPUTE sm = FUNCTION MIN(sm, tmp).
000057   MOVE sm TO zs.
000058   DISPLAY FUNCTION TRIM(zs).
000059   STOP RUN.

