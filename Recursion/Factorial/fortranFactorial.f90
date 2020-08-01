c This a loop in Fortran, earlier versions didn't have user defined recursion. Super Exponitial problems like Ackermann Function
c Forced them into adding it later on 
c Nested do loops weren't enough 
program factorial  
implicit none  

   ! define variables
   integer :: nfact = 1   
   integer :: n  
   
   ! compute factorials   
   do n = 1, 10      
      nfact = nfact * n 
      ! print values
      print*,  n, " ", nfact   
   end do 
   
end program factorial  
