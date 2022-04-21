000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_023_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 S          PIC X(100).
000008 01 i          PIC 9(10) COMP.
000009 01 ans        PIC S9(10) VALUE -1.
000010 01 cur        PIC X(400).
000011 01 ope        PIC 9(10) VALUE ZERO.
000012 01 oped       PIC 9(10).
000013 01 oper       PIC 9(10).
000014 01 str        PIC X(400).
000015 01 zs         PIC -(9)9.
000016 01 c1.
000017    03 c       PIC X(1) OCCURS 100 DEPENDING ON N.
000018 
000019 PROCEDURE DIVISION.
000020   ACCEPT N.
000021   ACCEPT S.
000022   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000023     MOVE S(i:1) TO c(i)
000024   END-PERFORM.
000025   SORT c on ASCENDING c.
000026   IF "a" <= c(1) AND c(N) <= "c" THEN
000027     PERFORM WITH TEST AFTER
000028     UNTIL N <= FUNCTION STORED-CHAR-LENGTH(str)
000029       IF ope NOT = 0 THEN
000030         DIVIDE ope BY 3 GIVING oped REMAINDER oper
000031 
000032         IF ZERO = oper THEN
000033           MOVE str TO cur
000034           STRING
000035             "b"
000036             FUNCTION TRIM(cur)
000037             INTO str
000038           END-STRING
000039           MOVE str TO cur
000040           STRING
000041             FUNCTION TRIM(cur)
000042             "b"
000043             INTO str
000044           END-STRING
000045         ELSE
000046           IF 1 = oper THEN
000047             MOVE str TO cur
000048             STRING
000049               "a"
000050               FUNCTION TRIM(cur)
000051               INTO str
000052             END-STRING
000053             MOVE str TO cur
000054             STRING
000055               FUNCTION TRIM(cur)
000056               "c"
000057               INTO str
000058             END-STRING
000059           ELSE
000060             MOVE str TO cur
000061             STRING
000062               "c"
000063               FUNCTION TRIM(cur)
000064               INTO str
000065             END-STRING
000066             MOVE str TO cur
000067             STRING
000068               FUNCTION TRIM(cur)
000069               "a"
000070               INTO str
000071             END-STRING
000072           END-IF
000073         END-IF
000074       ELSE
000075         STRING
000076           "b"
000077           INTO str
000078         END-STRING
000079       END-IF
000080       IF S = str THEN
000081         MOVE ope TO ans
000082         EXIT PERFORM
000083       END-IF
000084       ADD 1 TO ope
000085     END-PERFORM
000086   END-IF.
000087   MOVE ans TO zs
000088   DISPLAY FUNCTION TRIM(zs).
000089   STOP RUN.

