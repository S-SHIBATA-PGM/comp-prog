000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_099_D.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 COLOR      PIC 9(2).
000007 01 D1.
000008    03 D11 OCCURS 30.
000009       05 D    PIC 9(4) OCCURS 30.
000010 01 MAX_SUM    PIC 9(10) VALUE 9999999999.
000011 01 N          PIC 9(3).
000012 01 c1.
000013    03 c11 OCCURS 3.
000014        05 c   PIC 9(10) OCCURS 30 VALUE ZERO.
000015 01 cur        PIC 9(4).
000016 01 i          PIC 9(18).
000017 01 j          PIC 9(18).
000018 01 k          PIC 9(18).
000019 01 ki         PIC 9(18).
000020 01 len        PIC 9(4).
000021 01 ln1        PIC X(6).
000022 01 ln2        PIC X(1500).
000023 01 m          PIC 9(18).
000024 01 maxlen     PIC 9(3).
000025 01 r          PIC 9(1).
000026 01 res        PIC 9(10).
000027 01 sm         PIC 9(10).
000028 01 tmp        PIC 9(2).
000029 01 x          PIC 9(4).
000030 01 zs         PIC Z(10)9.
000031 
000032 PROCEDURE DIVISION.
000033   ACCEPT ln1.
000034   UNSTRING ln1
000035   DELIMITED BY SPACE INTO N COLOR.
000036   MOVE COLOR TO maxlen.
000037   PERFORM VARYING k FROM 1 BY 1 UNTIL COLOR < k
000038     ACCEPT ln2
000039     MOVE 1 TO cur
000040     MOVE 1 TO i
000041     PERFORM maxlen TIMES
000042       PERFORM VARYING j FROM cur BY 1
000043         UNTIL ln2(j:1) = SPACE
000044       END-PERFORM
000045       COMPUTE len = j - cur
000046       MOVE ln2(cur:len) TO D(k i)
000047       COMPUTE cur = j + 1
000048       ADD 1 TO i
000049     END-PERFORM
000050   END-PERFORM.
000051   MOVE N TO maxlen.
000052   PERFORM VARYING k FROM 1 BY 1 UNTIL N < k
000053     ACCEPT ln2
000054     MOVE 1 TO cur
000055     MOVE 1 TO i
000056     PERFORM maxlen TIMES
000057       PERFORM VARYING j FROM cur BY 1
000058         UNTIL ln2(j:1) = SPACE
000059       END-PERFORM
000060       COMPUTE len = j - cur
000061       MOVE ln2(cur:len) TO tmp
000062       ADD i TO k GIVING ki
000063       DIVIDE 3 INTO ki GIVING x REMAINDER r
000064       ADD 1 TO r
000065       ADD 1 TO c(r tmp)
000066       COMPUTE cur = j + 1
000067       ADD 1 TO i
000068     END-PERFORM
000069   END-PERFORM.
000070   MOVE MAX_SUM TO res.
000071   PERFORM VARYING i FROM 1 BY 1 UNTIL COLOR < i
000072     PERFORM VARYING j FROM 1 BY 1 UNTIL COLOR < j
000073       IF i NOT = j
000074         PERFORM VARYING k FROM 1 BY 1 UNTIL COLOR < k
000075           IF i NOT = k AND j NOT = k
000076             MOVE 0 TO sm
000077             PERFORM VARYING m FROM 1 BY 1 UNTIL COLOR < m
000078               COMPUTE sm = sm + D(m i) * c(1 m)
000079             END-PERFORM
000080             PERFORM VARYING m FROM 1 BY 1 UNTIL COLOR < m
000081               COMPUTE sm = sm + D(m j) * c(2 m)
000082             END-PERFORM
000083             PERFORM VARYING m FROm 1 BY 1 UNTIL COLOR < m
000084               COMPUTE sm = sm + D(m k) * C(3 m)
000085             END-PERFORM
000086             IF sm < res
000087               MOVE sm TO res
000088             END-IF
000089           END-IF
000090         END-PERFORM
000091       END-IF
000092     END-PERFORM
000093   END-PERFORM.
000094   MOVE res TO zs.
000095   DISPLAY FUNCTION TRIM(zs).
000096   STOP RUN.

