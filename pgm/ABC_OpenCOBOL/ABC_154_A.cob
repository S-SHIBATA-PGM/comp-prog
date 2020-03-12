IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 LN         PIC X(21).
01 S          PIC X(10).
01 T          PIC X(10).
01 U          PIC X(10).
01 A          PIC 9(2).
01 B          PIC 9(2).
01 ZS         PIC Z(2)9.
01 DUMMY      PIC X(1).
01 ans        PIC X(2).
01 z          PIC X(5).

PROCEDURE DIVISION.
  ACCEPT LN.
  UNSTRING LN DELIMITED BY SPACE INTO S T.
  ACCEPT LN.
  UNSTRING LN DELIMITED BY SPACE INTO A B.
  ACCEPT U.
  IF S = U
      ADD -1 TO A
  ELSE
      ADD -1 TO B
  END-IF.
  MOVE A TO ZS.
  PERFORM UNANS.
  STRING ans(1:FUNCTION STORED-CHAR-LENGTH(ans)) INTO z.
  MOVE B TO ZS.
  PERFORM UNANS.
  STRING  z(1:FUNCTION STORED-CHAR-LENGTH(z))
          SPACE
          ans(1:FUNCTION STORED-CHAR-LENGTH(ans))
  INTO z.
  DISPLAY z(1:FUNCTION STORED-CHAR-LENGTH(z)).
  STOP RUN.

UNANS SECTION.
  UNSTRING
  ZS DELIMITED BY ALL SPACE
  INTO DUMMY ans.