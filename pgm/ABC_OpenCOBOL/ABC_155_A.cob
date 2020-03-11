IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 LN           PIC X(5).
01 A            PIC 9(1).
01 B            PIC 9(1).
01 C            PIC 9(1).
01 flg          PIC 9(1) VALUE ZERO.
01 ans          PIC X(3).

PROCEDURE DIVISION.
MAIN.
    ACCEPT LN.
    UNSTRING LN DELIMITED BY SPACE INTO A B C.
    IF A = B AND B NOT = C
        MOVE 1 TO flg
    END-IF.
    IF B = C AND C NOT = A
        MOVE 1 TO flg
    END-IF.
    IF C = A AND A NOT = B
        MOVE 1 TO flg
    END-IF.
    IF flg = 1
        DISPLAY "Yes"
    ELSE
        DISPLAY "No"
    END-IF.

MAIN-EXIT.
  STOP RUN.
