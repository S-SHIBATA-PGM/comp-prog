IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 L          PIC 9(3).
01 N          PIC 9(3).
01 Q          PIC 9(3).
01 R          PIC 9(3).
01 T          PIC 9(10).
01 a1.
   03 a       PIC 9(10) OCCURS 100 VALUE ZERO.
01 i          PIC 9(3) BINARY.
01 j          PIC 9(3) BINARY.
01 ln         PIC X(7).
01 ln2        PIC X(18).
01 zs         PIC Z(10)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N Q.
  PERFORM VARYING i FROM 1 BY 1 UNTIL Q < i
    ACCEPT ln2
    UNSTRING ln2 DELIMITED BY SPACE INTO L R T
    PERFORM VARYING j FROM L BY 1 UNTIL R < j
      MOVE T TO a(j)
    END-PERFORM
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    MOVE a(i) TO zs
    DISPLAY FUNCTION TRIM(zs)
  END-PERFORM.

