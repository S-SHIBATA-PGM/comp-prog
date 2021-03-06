000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_059_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC X(101).
000007 01 B          PIC X(101).
000008 01 i          PIC 9(3).
000009 01 num        PIC 9(3) VALUE 101.
000010 01 numA       PIC 9(3).
000011 01 numB       PIC 9(3).
000012 01 strA       PIC X(101).
000013 01 strB       PIC X(101).
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT A.
000017   ACCEPT B.
000018   SUBTRACT FUNCTION STORED-CHAR-LENGTH(A) FROM num GIVING numA.
000019   SUBTRACT FUNCTION STORED-CHAR-LENGTH(B) FROM num GIVING numB.
000020   PERFORM VARYING i FROM 1 BY 1 UNTIL numA < i
000021     STRING
000022       strA(1:FUNCTION STORED-CHAR-LENGTH(strA))
000023       ZERO
000024       INTO strA
000025     END-STRING
000026   END-PERFORM.
000027   STRING
000028     strA(1:FUNCTION STORED-CHAR-LENGTH(strA))
000029     A(1:FUNCTION STORED-CHAR-LENGTH(A))
000030     INTO strA
000031   END-STRING.
000032   PERFORM VARYING i FROM 1 BY 1 UNTIL numB < i
000033     STRING
000034       strB(1:FUNCTION STORED-CHAR-LENGTH(strB))
000035       ZERO
000036       INTO strB
000037     END-STRING
000038   END-PERFORM.
000039   STRING
000040     strB(1:FUNCTION STORED-CHAR-LENGTH(strB))
000041     B(1:FUNCTION STORED-CHAR-LENGTH(B))
000042     INTO strB
000043   END-STRING.
000044   IF strA > strB THEN
000045     DISPLAY "GREATER"
000046   ELSE
000047     IF strA < strB THEN
000048       DISPLAY "LESS"
000049     ELSE
000050       DISPLAY "EQUAL"
000051     END-IF
000052   END-IF.
000053   STOP RUN.

