module library_implementation

   implicit none

   public get_integrals_implementation1
   public get_integrals_implementation2

   private

contains

   subroutine get_integrals_implementation1(a, b, c, res)

      real(8), intent(in)  :: a, b, c
      real(8), intent(out) :: res

      res = a + b + c
      print *, 'calculated integrals according to implementation 1, result is', res

   end subroutine

   subroutine get_integrals_implementation2(a, b, c, res)

      real(8), intent(in)  :: a, b, c
      real(8), intent(out) :: res

      res = a + b + c
      print *, 'calculated integrals according to implementation 2, result is', res

   end subroutine

end module
