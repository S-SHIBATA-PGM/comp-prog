000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_153_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(600000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 A              PIC 9(5).
000016 01 H              PIC 9(10).
000017 01 LN             PIC X(600000).
000018 01 N              PIC 9(6).
000019 01 accum          PIC 9(10).
000020 01 cur            PIC 9(10) VALUE 1.
000021 01 i              PIC 9(18) VALUE 1.
000022 01 j              PIC 9(18).
000023 01 len            PIC 9(10).
000024 01 maxlen         PIC 9(6) VALUE 100000.
000025 
000026 PROCEDURE DIVISION.
000027   ACCEPT LN.
000028   UNSTRING LN DELIMITED BY SPACE INTO H N.
000029   OPEN INPUT SYSIN.
000030   READ SYSIN INTO LN.
000031   CLOSE SYSIN.
000032   PERFORM maxlen TIMES
000033       PERFORM VARYING j FROM cur BY 1 UNTIL LN(j:1) = SPACE
000034       END-PERFORM
000035       COMPUTE len = j - cur
000036       MOVE LN(cur:len) TO A
000037       ADD A TO accum
000038       COMPUTE cur = j + 1
000039       ADD 1 TO i
000040   END-PERFORM.
000041   IF H <= accum
000042       DISPLAY "Yes"
000043   ELSE
000044       DISPLAY "No"
000045   END-IF.
