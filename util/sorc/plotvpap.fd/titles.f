      SUBROUTINE TITLES
C$$$  SUBPROGRAM DOCUMENTATION BLOCK
C                .      .    .                                       .
C SUBPROGRAM:    TITLES      LABELS THE LAND MASSES ON S.H. 1/40MIL MP
C   PRGMMR: LIN              ORG: W/NMC412   DATE: 97-02-10
C
C ABSTRACT: LABELS THE CONTINENTS FOR THE STANDARD 1/40 MILLIOM POLAR
C   STEREOGRAPHIC PROJECTION OF THE S. HEMISPHERE.
C
C PROGRAM HISTORY LOG:
C   YY-MM-DD  ORIGINAL AUTHOR UNKNOWN
C   89-04-06  HENRICHSEN  DOCUMENT
C   93-06-10  LILLY CONVERT SUBROUTINE TO FORTRAN 77
C   97-02-10  LIN   CONVERT SUBROUTINE TO CFT     77
C
C USAGE:    CALL TITLES
C
C
C REMARKS: CALLS PUTLAB TO LABEL THE LAND MASSES IN S.H.
C
C ATTRIBUTES:
C   LANGUAGE: FORTRAN 77
C   MACHINE:  NAS
C
C$$$
C
C     THIS SUBROUTINE LABELS THE CONTINENTS FOR THE STANDARD
C     1 : 40M POLAR STEREOGRAPHIC PROJECTION OF THE S. HEMISPHERE.
C
      COMMON /ADJUST/  IXADJ, IYADJ
C
      INTEGER   IPRIOR(2)
C
      IPT = 340+IXADJ
      JPT = 325+IYADJ
      HEIGHT = 11.0
      ANGLE = 0.0
      NCHAR = 17
      IPRIOR(1) = 0
      IPRIOR(2) = 0
      ITAG = 0
      CALL PUTLAB(IPT,JPT,HEIGHT,'A#U#S#T#R#A#L#I#A',ANGLE,NCHAR,
     X            IPRIOR,ITAG)
      IPT = 1100+IXADJ
      JPT = 1700+IYADJ
      NCHAR = 25
      CALL PUTLAB(IPT,JPT,HEIGHT,'S#O#U#T#H###A#M#E#R#I#C#A',
     X            ANGLE,NCHAR,IPRIOR,ITAG)
      IPT = 1550+IXADJ
      JPT = 755+IYADJ
      NCHAR = 11
      CALL PUTLAB(IPT,JPT,HEIGHT,'A#F#R#I#C#A',ANGLE,NCHAR,
     X            IPRIOR,ITAG)
      IPT = 750+IXADJ
      JPT = 870+IYADJ
      NCHAR = 19
      CALL PUTLAB(IPT,JPT,HEIGHT,'A#N#T#A#R#C#T#I#C#A',ANGLE,
     X            NCHAR,IPRIOR,ITAG)
      RETURN
      END
