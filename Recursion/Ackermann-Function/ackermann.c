#	       | n + 1  	        if m = 0 
#	       |
#  ack(m,n) -> | ack(m-1, 1) 	        if m > 0, n = 0
#	       |
#	       | ack(m-1, ack(m,n-1) 	if m > 0, n > 0


# In computability theory, the Ackermann function, named after Wilhelm Ackermann
# is one of the simplest and earliest-discovered examples of a total computable
# function that is not primitive recursive. All primitive recursive functions are
# total and computable, but the Ackermann function illustrates that not all total
# computable functions are primitive recursive.

# The function is super exponential, where it's better to use recursion over iteration 
# However, the function grows too fast, isn't a primitive recurion, therefore# must be done recursively. 

# The function is used as a benchmark for how compilers optimize recursion. 

#include <stdio.h> 
int ack(int m, int n) 
{ 
    if (m == 0){ 
        return n+1; 
    } 
    else if((m > 0) && (n == 0)){ 
        return ack(m-1, 1); 
    } 
    else if((m > 0) && (n > 0)){ 
        return ack(m-1, ack(m, n-1)); 
    } 
} 
  
int main(){ 
    int A; 
    A = ack(1, 2); 
    printf("%d", A); 
    return 0; 
} 
  
// This code is contributed by Amiya Rout 

