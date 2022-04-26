000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_011_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 S          PIC X(12).
000009 01 i          PIC 9(10).
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT S.
000013   PERFORM VARYING i FROM 1 BY 1
000014   UNTIL FUNCTION STORED-CHAR-LENGTH(S) < i
000015     IF 1 = i THEN
000016       MOVE FUNCTION UPPER-CASE(S(i:1)) TO S(i:1)
000017     ELSE
000018       MOVE FUNCTION LOWER-CASE(S(i:1)) TO S(i:1)
000019     END-IF
000020   END-PERFORM.
000021   DISPLAY FUNCTION TRIM(S).
000022   STOP RUN.

