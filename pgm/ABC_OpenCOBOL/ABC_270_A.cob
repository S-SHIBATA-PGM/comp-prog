IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 AB1.
   03 AB      PIC 9(10) OCCURS 3.
01 B          PIC 9(10).
01 i          PIC 9(10) COMP.
01 ln         PIC X(30).
01 num        PIC 9(10).
01 point      PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO A B.
  MOVE A TO num.
  PERFORM check_solved.
  MOVE B TO num.
  PERFORM check_solved.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
    IF ZERO < AB(i)
      ADD i TO point
      IF 3 = i THEN ADD 1 TO point
      END-IF
    END-IF
  END-PERFORM.
  MOVE point TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

check_solved SECTION.
  IF 1 = num ADD 1 TO AB(1)
  ELSE IF 2 = num ADD 1 TO AB(2)
  ELSE IF 3 = num ADD 1 TO AB(1) ADD 1 TO AB(2)
  ELSE IF 4 = num ADD 1 TO AB(3)
  ELSE IF 5 = num ADD 1 TO AB(1) ADD 1 TO AB(3)
  ELSE IF 6 = num ADD 1 TO AB(2) ADD 1 TO AB(3)
  ELSE IF 7 = num ADD 1 TO AB(1) ADD 1 TO AB(2) ADD 1 TO AB(3).

