000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_179_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(1000).
000007 01 ans        PIC X(1002).
000008 
000009 PROCEDURE DIVISION.
000010   ACCEPT S.
000011   IF "s" = S(FUNCTION STORED-CHAR-LENGTH(S) : 1) THEN
000012     STRING
000013       FUNCTION TRIM(S)
000014       "es"
000015       INTO ans
000016     END-STRING
000017   ELSE
000018     STRING
000019       FUNCTION TRIM(S)
000020       "s"
000021       INTO ans
000022     END-STRING
000023   END-IF.
000024   DISPLAY FUNCTION TRIM(ans).
000025   STOP RUN.

