# A tail recursive function 
# to calculate factorial 
def go(n, a):   
    if (n == 0): 
        return a 
  
    return go(n - 1, n * a) 


def fact(n):
    return go(n,1)


# Driver program to test 
#  above function 
print(fact(5)) 
