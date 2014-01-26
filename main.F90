program callback

   implicit none

   real(8)  :: res
   external :: get_integrals_host

   call openrsp(get_integrals_host)

contains

   subroutine openrsp(f)

      external :: f

      call get_integrals(f,  2, 1.0d0, 2.0d0, 3.0d0, res)
      call get_integrals(f,  3, 1.0d0, 2.0d0, 3.0d0, res)
      call get_integrals(f, 10, 1.0d0, 2.0d0, 3.0d0, res)

   end subroutine

   subroutine get_integrals(f, order, a, b, c, res)

      integer, intent(in)  :: order
      real(8), intent(in)  :: a, b, c
      real(8), intent(out) :: res

      call f(order, a, b, c, res)

   end subroutine

end program
