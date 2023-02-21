C FILE: EXMP.F90
      SUBROUTINE FIB(A,N,X)
C
C     CALCULATE FIRST N FIBONACCI NUMBERS
C
C     ALSO A SIDE EFFECT ON X
C
      INTEGER N
      INTEGER X
      REAL*8 A(N)
      X = X + 1
      DO I=1,N
         IF (I.EQ.1) THEN
            A(I) = 0.0D0
         ELSEIF (I.EQ.2) THEN
            A(I) = 1.0D0
         ELSE 
            A(I) = A(I-1) + A(I-2)
         ENDIF
      ENDDO
      END
C END FILE EXMP.F90