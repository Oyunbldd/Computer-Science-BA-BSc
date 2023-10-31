module HW2
import StdEnv

//REMEMBER: PLAGIARISM IS ZERO!

//Please write your neptun code here: DDJIJZ | Oyunbold


/*
EXERCISE 1:
Pell numbers are a sequence of integers that have many interesting mathematical properties. 
The Pell numbers are defined by the recurrence relation:

P(0)=0
P(1)=1
P(n)=2*P(n-1)+P(n-2)  for  n>1

The first few Pell numbers are:
0,1,2,5,12,29,70,169,408,985    

You should define a function - sumOfPel, which will take a non-negative integer n 
and returns the sum of the first n Pell numbers.

Example:
sumOfPel 5 = 20 --> sum of first five pell numbers (0+1+2+5+12)
*/

pellNumber :: Int -> Int
pellNumber 0 = 0
pellNumber 1 = 1
pellNumber x = 2 * pellNumber(x - 1) + pellNumber(x - 2)



sumOfList :: [Int] -> Int
sumOfList [] = 0
sumOfList [x : xs] = pellNumber x + sumOfList xs



sumOfPel :: Int -> Int
sumOfPel 0 = 0
sumOfPel 1 = 1
sumOfPel x = sumOfList[0..(x-1)]



// Start = sumOfPel 0//0
// Start = sumOfPel 5//20
// Start = sumOfPel 9//696
// Start = sumOfPel 7//119






/*
EXERCISE 2:

Check if n-th Fibonacci number is prime.
You can use the standard definition of Fibonacci numbers:
F(0)=0
F(1)=1
F(2)=1
F(3)=2
f(4)=3
f(5)=5
F(n)=F(n-1)+F(n-2)  for  n>1

The first few Fibonacci numbers are:
0,1,1,2,3,5,8,13,21,34
*/

mightPossibleDividers :: Int -> [Int]
mightPossibleDividers 0 = []
mightPossibleDividers x = [2..maxDivider]
where maxDivider = toInt (sqrt (toReal x))


isPrime :: Int [Int] -> Bool
isPrime 2 x  = True
isPrime n [] = True
isPrime n [x : xs] 
| n rem x <> 0 = isPrime n xs
= False


fibonacci :: Int -> Int
fibonacci x 
| x == 0 = 0
| x == 1 = 1
= value
where value = fibonacci( x-1) + fibonacci(x-2)

isFibonacciPrime :: Int -> Bool
isFibonacciPrime x 
| x < 3 = False
= isPrime (fibonacci x) (mightPossibleDividers(fibonacci x))



// Start = isFibonacciPrime 8

// Start = isFibonacciPrime 8 //fib(8)=21 --> False, 21 is not Prime
// Start = isFibonacciPrime 7 //fib(8)=13 --> True, 13 is Prime
// Start = isFibonacciPrime 10 //fib(8)=55 --> False
// Start = isFibonacciPrime 5 //fib(5)=5 --> True
// Start = isFibonacciPrime 0//False
// Start = isFibonacciPrime 1//False
// Start = isFibonacciPrime 2//False
// Start = isFibonacciPrime 3//fib(3)=2 --> True
// Start = isFibonacciPrime 4//fib(4)=3 --> True
// Start = isFibonacciPrime 11 // fib(11)= 89 --> True















