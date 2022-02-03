// Starts with 0 1 -> Sum of two previous numbers -> next number
// 0 1 1 2 3 5 8 13 21 34 55 89 144 
//  Fn = Fn-1 +  Fn-2


public class Fibonacci {

	public static void main(String[] args) {
		System.out.println(recFib(10));
		System.out.println(iterFib(10));
    System.out.println("Hello World");
	}
	
	
	// Recursive implementation 
	static int recFib(int n) {
		if (n == 1 || n == 0) {
			return n;
		}
		
		return recFib(n-1) + recFib(n-2);
	}
	
	// Time Complexity O(2^n) Exponential 
	// Space Complecity O(n) - linear to maximum depth of
	// the fib tree 

	
/*		 fib(5)   
     /                \
fib(4)               	 fib(3)   
/        \              /       \ 
fib(3)      fib(2)       fib(2)   fib(1)
/    \       /    \        /      \
fib(2)   fib(1)  fib(0) fib(0) fib(1) fib(0)
/     \
fib(1) fib(0)

*/
	
	// Iterative implementation 
	static int iterFib(int n) {
		
		if (n == 0 || n == 1) {
			return n; 
		} 
		
		int first = 0;
		int second = 1;
		int nth = 1;
		
		for (int i = 2; i <= n; i++) {
			nth = first + second;
			first = second;
			second = nth;
		} 
		
		return nth;

	}
	
	

}
