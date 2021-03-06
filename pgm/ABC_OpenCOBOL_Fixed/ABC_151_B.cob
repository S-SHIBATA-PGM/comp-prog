000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_151_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 Ai             PIC 9(10).
000007 01 K              PIC 9(10).
000008 01 M              PIC 9(10).
000009 01 N              PIC 9(10).
000010 01 accum          PIC 9(10) VALUE ZERO.
000011 01 ans            PIC S9(10).
000012 01 cur            PIC 9(10) VALUE 1.
000013 01 i              PIC 9(10) VALUE 1.
000014 01 j              PIC 9(10).
000015 01 len            PIC 9(10).
000016 01 ln             PIC X(400).
000017 01 maxlen         PIC 9(10) VALUE 100.
000018 01 zs             PIC Z(9)9.
000019 
000020 PROCEDURE DIVISION.
000021   ACCEPT ln.
000022   UNSTRING ln DELIMITED BY SPACE INTO N K M.
000023   ACCEPT ln.
000024   COMPUTE maxlen = N - 1.
000025   PERFORM maxlen TIMES
000026       PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000027       END-PERFORM
000028       COMPUTE len = j - cur
000029       MOVE ln(cur:len) TO Ai
000030       ADD Ai TO accum
000031       COMPUTE cur = j + 1
000032       ADD 1 TO i
000033   END-PERFORM.
000034   COMPUTE ans = N * M - accum.
000035   IF ans < ZERO
000036       DISPLAY ZERO
000037   ELSE
000038       IF K < ans
000039           DISPLAY -1
000040       ELSE
000041           MOVE ans TO zs
000042           DISPLAY FUNCTION TRIM(zs)
000043       END-IF
000044   END-IF.
000045   STOP RUN.

