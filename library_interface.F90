subroutine get_integrals_host(order, a, b, c, res)

   use library_implementation, only: get_integrals_implementation1, &
                                     get_integrals_implementation2

   implicit none

   integer, intent(in)  :: order
   real(8), intent(in)  :: a, b, c
   real(8), intent(out) :: res

   print *, 'order is', order
   select case (order)
      case (1, 2)
         call get_integrals_implementation1(a, b, c, res)
      case (3, 4, 5)
         call get_integrals_implementation2(a, b, c, res)
      case default
         print *, 'get_integrals_host not implemented for order', order
   end select

end subroutine
