000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_024_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10) VALUE ZERO.
000007 01 N          PIC 9(10).
000008 01 T          PIC 9(10).
000009 01 i          PIC 9(10) VALUE 1 COMP.
000010 01 ln         PIC X(30).
000011 01 pre        PIC S9(10) VALUE -1.
000012 01 tt         PIC 9(10) VALUE ZERO.
000013 01 zs         PIC Z(9)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED BY SPACE INTO N T.
000018   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000019     ACCEPT A
000020     *> 最初はドアが閉じている
000021     IF pre < ZERO THEN
000022       MOVE A TO pre
000023     END-IF
000024     ADD FUNCTION MIN(T A - pre) TO tt
000025     MOVE A TO pre
000026   END-PERFORM.
000027   *> 最後のドアが閉じる
000028   ADD T TO tt
000029   MOVE tt TO zs.
000030   DISPLAY FUNCTION TRIM(zs).
000031   STOP RUN.

