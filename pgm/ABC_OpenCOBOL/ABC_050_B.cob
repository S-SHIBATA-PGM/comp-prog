IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 M          PIC 9(3).
01 P          PIC 9(3).
01 T1.
   03 T11 OCCURS 600 DEPENDING ON maxlen.
      05 T    PIC 9(6).
01 X          PIC 9(6).
01 cur        PIC 9(3) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(3).
01 ln         PIC X(700).
01 ln2        PIC X(10).
01 maxlen     PIC 9(3) VALUE 600.
01 sm         PIC 9(8).
01 tmp        PIC 9(8).
01 zs         PIC Z(8)9.

PROCEDURE DIVISION.
  ACCEPT maxlen.
  ACCEPT ln.
  MOVE ZERO TO sm.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO T(i)
    ADD T(i) TO sm
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  ACCEPT M.
  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    ACCEPT ln2
    UNSTRING ln2 DELIMITED BY SPACE INTO P X
    SUBTRACT T(P) FROM sm GIVING tmp
    ADD X TO tmp
    MOVE tmp TO zs
    DISPLAY FUNCTION TRIM(zs)
  END-PERFORM.
  STOP RUN.

