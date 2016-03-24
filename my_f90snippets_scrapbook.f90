!\if
if( $1 ) then
  $0
endif

!\do
do $1=$2, $3
  $0
end do

!\debug
!DEBUG
print*, '$1= ', $1, " ", __FILE__, __LINE__
$0
pause
!ENDDEBUG

!\prog
program $1
  implicit none
  $0
end program

!\openr
open( newunit = $1, file = '$2', action = 'read', status = 'old')
$0
close($1)

!\openw
open( newunit = $1, file = '$2', action = 'write', status = 'replace')
$0
close($1)

!\r8
real( dp )$1 :: $0

!\int
integer$1 :: $0

!\char
character( len = $1 )$2 :: $0

!\type
type :: $1
  $0
end type

!\sub
subroutine $1( $2 )
!arguments
  $2
!local
  
!allocation
  
!implementation
  $0
end subroutine

!\func
function $1( $2 ) result( $3 )
!arguments
  $2
  $3
!local
  
!allocation
  
!implementation
  $0
  $3 =
end function

!\mod
module $1
  implicit none
  $0
contains
  
end module

!\__
__FILE__, __LINE__

!\sel
select case( $1 )
  case( $2 )
  $0
  case default
  
end select

!\watch
print*, '$1= ', $1, " ", __FILE__, __LINE__
$0

!\in
 intent( in )$1

!\out
 intent( out )$1

!\ino
 intent( inout )$1

!\all
 allocatable &
 !allocate($1($2))
 !deallocate($1)
 :: $1( :$0 )
 !
 
!\par
 parameter
 
!\dow
do while( $1 )
	$0
enddo

!\logi
logical$1 :: $0

!\pause
print*, 'paused @ ', __FILE__, __LINE__; read( *, * ) paused !  character( len = 1 ), private :: paused

!\prin
print*, $0, __FILE__, __LINE__

!\sto
print*, "Not ready!", __FILE__, __LINE__; stop
