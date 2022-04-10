IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 SA1.
   03 SA      PIC X(1) OCCURS 100.
01 SB1.
   03 SB      PIC X(1) OCCURS 100.
01 SC1.
   03 SC      PIC X(1) OCCURS 100.
01 aidx       PIC 9(3) VALUE ZERO.
01 alen       PIC 9(3).
01 bidx       PIC 9(3) VALUE ZERO.
01 blen       PIC 9(3).
01 cidx       PIC 9(3) VALUE ZERO.
01 clen       PIC 9(3).
01 flg        PIC X(1) VALUE ZERO.
01 now        PIC X(1) VALUE SPACE.
01 winner     PIC X(1).

PROCEDURE DIVISION.
    ACCEPT SA1.
    ACCEPT SB1.
    ACCEPT SC1.
    MOVE 'a' TO now.
    COMPUTE alen = FUNCTION STORED-CHAR-LENGTH(SA1).
    COMPUTE blen = FUNCTION STORED-CHAR-LENGTH(SB1).
    COMPUTE clen = FUNCTION STORED-CHAR-LENGTH(SC1).
    PERFORM UNTIL flg = 1
        IF now = 'a' THEN
            ADD 1 TO aidx
            MOVE SA(aidx) TO now
            IF alen < aidx THEN
                MOVE 'A' TO winner
                EXIT PERFORM
            END-IF
        ELSE
            IF now = 'b' THEN
                ADD 1 TO bidx
                MOVE SB(bidx) TO now
                IF blen < bidx THEN
                    MOVE 'B' TO winner
                    EXIT PERFORM
                END-IF
            ELSE
                ADD 1 TO cidx
                MOVE SC(cidx) TO now
                IF clen < cidx THEN
                    MOVE 'C' TO winner
                    EXIT PERFORM
                END-IF
        END-IF
    END-PERFORM.
    DISPLAY winner.
    STOP RUN.

