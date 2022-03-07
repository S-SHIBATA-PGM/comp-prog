IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
 01 S1.
    03 S PIC X(1) OCCURS 100.
01 K          PIC 9(19).
01 N          PIC 9(10).
01 i          PIC 9(19).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S1.
  ACCEPT K.

  PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
    IF FUNCTION STORED-CHAR-LENGTH(S1) < i
      EXIT PERFORM
    END-IF
    IF 1 NOT = S(i)
      DISPLAY S(i)
      STOP RUN
    END-IF
  END-PERFORM.

  DISPLAY '1'
  STOP RUN.

