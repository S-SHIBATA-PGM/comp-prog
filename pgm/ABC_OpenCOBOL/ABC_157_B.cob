IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 INP          PIC X(399).
01 cur          PIC 9(10) VALUE 1.
01 i            PIC 9(18) VALUE 1.
01 j            PIC 9(18).
01 jix          PIC 9(18) VALUE 1.
01 len          PIC 9(10).
01 N            PIC 9(3).
01 NUM          PIC 9(1) VALUE 3.
01 nm           PIC 9(3).
01 ans          PIC Z(2)9.
01 flg          PIC 9(1) VALUE 0.
01 y1.
    03 y11 OCCURS 100 DEPENDING ON N.
        05 y    PIC S9(3) VALUE -1.
01 x1.
    03 x11 OCCURS 100 DEPENDING ON N.
        05 x    PIC S9(3) VALUE -1.
01 tate1.
    03 tate11 OCCURS 3.
        05 tate PIC 9(3) VALUE 0.
01 yoko1.
    03 yoko11 OCCURS 3.
        05 yoko PIC 9(3) VALUE 0.
01 naname1.
    03 naname11 OCCURS 2.
        05 naname   PIC 9(3) VALUE 0.

PROCEDURE                        DIVISION.
PERFORM NUM TIMES
    ACCEPT INP
    MOVE 1 TO cur
    MOVE 1 TO jix
    PERFORM NUM TIMES
        PERFORM VARYING j FROM cur BY 1 UNTIL INP(j:1) = SPACE
        END-PERFORM
        COMPUTE len = j - cur
        MOVE INP(cur:len) TO nm
        MOVE i TO y(nm)
        MOVE jix TO x(nm)
        COMPUTE cur = j + 1
        ADD 1 TO jix
    END-PERFORM
    ADD 1 TO i
END-PERFORM.
ACCEPT N.
PERFORM N TIMES
    ACCEPT nm
    IF y(nm) NOT = -1
        ADD 1 TO yoko(y(nm))
        IF NUM = yoko(y(nm))
            MOVE 1 TO flg
            EXIT PERFORM
        END-IF
        ADD 1 TO tate(x(nm))
        IF NUM = tate(x(nm))
            MOVE 1 TO flg
            EXIT PERFORM
        END-IF
        IF y(nm) = x(nm)
            ADD 1 TO naname(1)
            IF NUM = naname(1)
                MOVE 1 TO flg
                EXIT PERFORM
            END-IF
        END-IF
        IF y(nm) = NUM - x(nm) + 1
            ADD 1 TO naname(2)
            IF NUM = naname(2)
                MOVE 1 TO flg
                EXIT PERFORM
            END-IF
        END-IF
    END-IF
END-PERFORM.
IF flg = 1
    DISPLAY "Yes"
ELSE
    DISPLAY "No"
END-IF.
STOP RUN.
