IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 LN           PIC X(500).
01 N            PIC 9(3).
01 cur          PIC 9(10) VALUE 1.
01 i            PIC 9(18) VALUE 1.
01 j            PIC 9(18).
01 len          PIC 9(10). 
01 A            PIC 9(4) VALUE 1.
01 FLG          PIC 9(1) VALUE 1.

PROCEDURE DIVISION.
MAIN.
    ACCEPT N.
    ACCEPT LN.
    PERFORM N TIMES
        PERFORM VARYING j FROM cur BY 1 UNTIL LN(j:1) = SPACE
        END-PERFORM
        COMPUTE len = j - cur
        MOVE LN(cur:len) TO A
        IF FUNCTION MOD(A, 2) = ZERO AND FUNCTION MOD(A, 3) NOT = ZERO
            AND FUNCTION MOD(A, 5) NOT = ZERO THEN
            MOVE ZERO TO FLG
            EXIT PERFORM
        END-IF
        COMPUTE cur = j + 1
        ADD 1 TO i
    END-PERFORM.
    IF FLG = 1
        DISPLAY "APPROVED"
    ELSE
        DISPLAY "DENIED"
    END-IF.

MAIN-EXIT.
    STOP RUN.
