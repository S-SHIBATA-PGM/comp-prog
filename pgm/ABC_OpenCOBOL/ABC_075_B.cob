IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 H          PIC 9(2).
01 MARK1      PIC X(1) VALUE '#'.
01 MARK2      PIC X(1) VALUE SPACE.
01 W          PIC 9(2).
01 cnt        PIC 9(1).
01 dx1.
   03 dx11 OCCURS 8.
      05 dx   PIC S9(1).
01 dy1.
   03 dy11 OCCURS 8.
      05 dy   PIC S9(1).
01 field1.
   03 field11 OCCURS 50.
      05 field PIC X(50).
01 i          PIC 9(18).
01 j          PIC 9(18).
01 k          PIC 9(1).
01 ln         PIC X(5).
01 ln2        PIC X(50).
01 nx         PIC 9(2).
01 ny         PIC 9(2).
01 x          PIC 9(2).
01 y          PIC 9(2).

PROCEDURE DIVISION.
  *> X座標
  *> 下、右、上、左、右下、右上、左下、左上
  MOVE 0 TO dx(1).
  MOVE 1 TO dx(2).
  MOVE 0 TO dx(3).
  MOVE -1 TO dx(4).
  MOVE 1 TO dx(5).
  MOVE 1 TO dx(6).
  MOVE -1 TO dx(7).
  MOVE -1 TO dx(8).
  *> Y座標
  *> 下、右、上、左、右下、右上、左下、左上
  MOVE 1 TO dy(1).
  MOVE 0 TO dy(2).
  MOVE -1 TO dy(3).
  MOVE 0 TO dy(4).
  MOVE 1 TO dy(5).
  MOVE -1 TO dy(6).
  MOVE 1 TO dy(7).
  MOVE -1 TO dy(8).
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO H W.
  PERFORM VARYING i FROM 1 BY 1 UNTIL H < i
      ACCEPT field(i)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL H < i
    PERFORM VARYING j FROM 1 BY 1 UNTIL W < j
      MOVE i TO x
      MOVE j TO y
      MOVE 0 TO cnt
      IF field(x)(y:1) = MARK1 THEN
        STRING
          ln2(1:FUNCTION STORED-CHAR-LENGTH(ln2))
          MARK1 DELIMITED BY SIZE
          INTO ln2
        END-STRING
      ELSE
        PERFORM VARYING k FROM 1 BY 1 UNTIL 8 < k
          COMPUTE nx = x + dx(k)
          COMPUTE ny = y + dy(k)
          IF nx < 1 OR H < nx
          OR ny < 1 OR W < ny THEN
            CONTINUE
          ELSE
            IF field(nx)(ny:1) = MARK1 THEN
              ADD 1 TO cnt
            END-IF
          END-IF
        END-PERFORM
        STRING
          ln2(1:FUNCTION STORED-CHAR-LENGTH(ln2))
          cnt DELIMITED BY SIZE
          INTO ln2
        END-STRING
      END-IF
    END-PERFORM
    DISPLAY FUNCTION TRIM(ln2)
    MOVE SPACE TO ln2
  END-PERFORM.
  STOP RUN.

