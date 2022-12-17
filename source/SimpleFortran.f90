FUNCTION Area(x,y,z)
    IMPLICIT NONE
    REAL :: Area            ! function type
    REAL, INTENT( IN ) :: x, y, z
    REAL :: theta, height
    theta = ACOS((x**2+y**2-z**2)/(2.0*x*y))
    height = x*SIN(theta); Area = 0.5*y*height
   END FUNCTION Area
   
   PROGRAM Triangle
     IMPLICIT NONE
     REAL :: a, b, c
     INTERFACE 
     FUNCTION AREA(X,Y,Z)
       REAL(KIND=4), INTENT(IN) :: X
       REAL(KIND=4), INTENT(IN) :: Y
       REAL(KIND=4), INTENT(IN) :: Z
       REAL(KIND=4) :: AREA
     END FUNCTION AREA
   END INTERFACE 
     PRINT *, 'Welcome, please enter the&
              &lengths of the 3 sides.'
     READ *, a, b, c
     PRINT *, 'Triangle''s area:  ', Area(a,b,c)
    END PROGRAM Triangle

   