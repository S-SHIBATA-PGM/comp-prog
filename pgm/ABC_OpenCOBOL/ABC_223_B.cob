IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S         PIC X(2000).
01 ary1.
   03 ary    PIC X(1000) OCCURS 1000 DEPENDING len.
01 i         PIC 9(10) COMP.
01 len       PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT S.
  MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
  STRING
    FUNCTION TRIM(S)
    FUNCTION TRIM(S)
    INTO S
  END-STRING.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    MOVE S(i:len) TO ary(i)
  END-PERFORM.
  SORT ary ASCENDING ary.
  DISPLAY FUNCTION TRIM(ary(1)).
  DISPLAY FUNCTION TRIM(ary(len)).
  STOP RUN.

