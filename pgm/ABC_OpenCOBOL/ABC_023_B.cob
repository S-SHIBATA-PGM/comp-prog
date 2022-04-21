IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 S          PIC X(100).
01 i          PIC 9(10) COMP.
01 ans        PIC S9(10) VALUE -1.
01 cur        PIC X(400).
01 ope        PIC 9(10) VALUE ZERO.
01 oped       PIC 9(10).
01 oper       PIC 9(10).
01 str        PIC X(400).
01 zs         PIC -(9)9.
01 c1.
   03 c       PIC X(1) OCCURS 100 DEPENDING ON N.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT S.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    MOVE S(i:1) TO c(i)
  END-PERFORM.
  SORT c on ASCENDING c.
  IF "a" <= c(1) AND c(N) <= "c" THEN
    PERFORM WITH TEST AFTER
    UNTIL N <= FUNCTION STORED-CHAR-LENGTH(str)
      IF ope NOT = 0 THEN
        DIVIDE ope BY 3 GIVING oped REMAINDER oper

        IF ZERO = oper THEN
          MOVE str TO cur
          STRING
            "b"
            FUNCTION TRIM(cur)
            INTO str
          END-STRING
          MOVE str TO cur
          STRING
            FUNCTION TRIM(cur)
            "b"
            INTO str
          END-STRING
        ELSE
          IF 1 = oper THEN
            MOVE str TO cur
            STRING
              "a"
              FUNCTION TRIM(cur)
              INTO str
            END-STRING
            MOVE str TO cur
            STRING
              FUNCTION TRIM(cur)
              "c"
              INTO str
            END-STRING
          ELSE
            MOVE str TO cur
            STRING
              "c"
              FUNCTION TRIM(cur)
              INTO str
            END-STRING
            MOVE str TO cur
            STRING
              FUNCTION TRIM(cur)
              "a"
              INTO str
            END-STRING
          END-IF
        END-IF
      ELSE
        STRING
          "b"
          INTO str
        END-STRING
      END-IF
      IF S = str THEN
        MOVE ope TO ans
        EXIT PERFORM
      END-IF
      ADD 1 TO ope
    END-PERFORM
  END-IF.
  MOVE ans TO zs
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

