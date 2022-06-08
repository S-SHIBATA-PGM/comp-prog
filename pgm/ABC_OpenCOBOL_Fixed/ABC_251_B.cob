000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_251_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A1.
000007    03 A       PIC 9(10) OCCURS 300 DEPENDING N.
000008 01 N          PIC 9(10).
000009 01 W          PIC 9(10).
000010 01 cnt1.
000011    03 cnt     PIC 9(10) VALUE ZERO OCCURS 1000000.
000012 01 num        PIC 9(10) VALUE ZERO COMP.
000013 01 i          PIC 9(10) COMP.
000014 01 j          PIC 9(10) COMP.
000015 01 k          PIC 9(10) COMP.
000016 01 ln         PIC X(2400).
000017 01 pt         PIC S9(10) VALUE 1.
000018 01 zs         PIC Z(9)9.
000019 
000020 PROCEDURE DIVISION.
000021   ACCEPT ln.
000022   UNSTRING ln DELIMITED SPACE INTO N W.
000023   ACCEPT ln.
000024   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000025     UNSTRING ln DELIMITED SPACE INTO A(i) POINTER pt
000026   END-PERFORM
000027   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000028     IF A(i) <= W
000029       ADD 1 TO cnt(A(i))
000030       IF 1 = cnt(A(i))
000031         ADD 1 TO num
000032       END-IF
000033       ADD 1 TO i GIVING j
000034       PERFORM VARYING j FROM j BY 1 UNTIL N < j
000035         IF A(j) <= W
000036           ADD 1 TO cnt(A(j))
000037           IF 1 = cnt(A(j))
000038             ADD 1 TO num
000039           END-IF
000040           IF A(i) + A(j) <= W
000041             ADD 1 TO cnt(A(i) + A(j))
000042             IF 1 = cnt(A(i) + A(j))
000043               ADD 1 TO num
000044             END-IF
000045           END-IF
000046           ADD 1 TO j GIVING k
000047           PERFORM VARYING k FROM k BY 1 UNTIL N < k
000048             IF A(k) <= W
000049               ADD 1 TO cnt(A(k))
000050               IF 1 = cnt(A(k))
000051                 ADD 1 TO num
000052               END-IF
000053               IF A(i) + A(j) + A(K) <= W
000054                 ADD 1 TO cnt(A(i) + A(j) + A(K))
000055                 IF 1 = cnt(A(i) + A(j) + A(K))
000056                   ADD 1 TO num
000057                 END-IF
000058               END-IF
000059             END-IF
000060           END-PERFORM
000061         END-IF
000062       END-PERFORM
000063     END-IF
000064   END-PERFORM.
000065   MOVE num TO zs.
000066   DISPLAY FUNCTION TRIM(zs).
000067   STOP RUN.

