!-------------------------------------------------------------!
! Un-comment an entire section to see its functioning
!-------------------------------------------------------------!
! Programs to demonstrate the following:
! 1. Basic program structure
! 2. Variable declaration
! 3. Control structures
! 4. File handling
! Written on March 09, 2025
!-------------------------------------------------------------!

! ! 1. Basic program structures
! program main_program
!     implicit none
!     integer :: a, b, result
!     a = 8
!     b = 7
!     call add_numbers(a, b, result)
!     print *, "Sum:", result

!     print *, "Square of 4:", square(4)

! contains
!     subroutine add_numbers(x, y, sum)
!         integer, intent(in) :: x, y
!         integer, intent(out) :: sum
!         sum = x + y
!     end subroutine add_numbers

!     function square(n) result(res)
!         integer, intent(in) :: n
!         integer :: res
!         res = n*n
!     end function square

! end program main_program

!-------------------------------------------------------------!

! 2. Variable declaration
! program data_types
!     implicit none
!     integer :: a
!     real :: b
!     double precision :: c

!     a = 14.0
!     b = 9.1
!     c = 3.141593

!     print *, "Integer:", a
!     print *, "Real:", b
!     print *, "Double Precision:", c

! end program data_types

!-------------------------------------------------------------!

! ! 3. Control structures
! module math_operations
!     implicit none
! contains
!     function square(n) result(res)
!         integer, intent(in) :: n
!         integer :: res
!         res = n*n
!     end function square
! end module math_operations

! program loop_example
!     use math_operations
!     implicit none
!     integer :: i
!     do i = 1, 10
!         if (i == 5) cycle ! Skips 5
!         if (i == 8) exit  ! Exits at 8
!         print *, "i squared:", square(i)
!     end do
! end program loop_example

!-------------------------------------------------------------!

! ! 4. File handling
! program file_io
!     implicit none
!     integer :: unit = 10
!     character(20) :: name
!     real :: score

!     ! writing to file
!     open(unit=unit, file="data.txt", status="replace")
!     write(unit, *) "Avdesh", 75.3
!     write(unit, *) "Alice", 98.8
!     close(unit)

!     ! Reading from file
!     open(unit=unit, file="data.txt", status="old")
!     do
!         read(unit, *, end = 100) name, score
!         print *, "Name:", name, "Score:", score
!     end do
!     100 close(unit)
! end program file_io
!-------------------------------------------------------------!