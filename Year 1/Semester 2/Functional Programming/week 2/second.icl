module second
import StdEnv

//-------------------------------------NUMERICAL FUNCTIONS-----------------------------------------------

// 1. Write a function to compute the absolute value of an integer number.

//Start = abs -4   // 4  abs built-in function

myabs :: Int -> Int
myabs x 
| x < 0 = ~x
= x

// ~ <- negation operator 

// Start = myabs -4 // 4
//Start = myabs 8 // 8



// 2. Define a function maxi with two arguments that delivers the maximum of the two.
// maxi :: Int Int -> Int
// maxi x y = max x y 
// | x > y = x 
// = y


// Start = maxi 34 56 // 56

 

// 3. Define a function mini that has two arguments that delivers the minimum of the two values.

mini :: Int Int -> Int
mini x y  = min x y

// Start = mini 34 56  // 34


// 4. Check if a number is even.

isevenr :: Int -> Bool  // isEven, isOdd built-in function
isevenr x = ( x rem 2 == 0 )

//Start = isevenr 61 // False
//Start = isevenr 22 // True



// 5. Given an integer, write a function that returns the last digit.

lastDigit :: Int -> Int
lastDigit nr = nr rem 10


// Start = lastDigit 124 // 4
//Start = lastDigit 4000 // 0
//Start = lastDigit 123442 // 2


// 6. Divide a number by 10, do not loose precision!!

// div10 :: Int -> Real
// div10 x = toReal ( x / 10)
// div10 x = x / 10.0


//Start = div10 12345
//Start = div10 6789



// 7. Given two logical statements check if both are true!

boolch :: Bool Bool -> Bool
boolch a b = a && b 

// && , || 

//Start = boolch True False // False
//Start = boolch True True // True



// 8. Check if a number is positive or smaller then -100!

chnr :: Int -> Bool
chnr x = (x > 0) || (x < -100)


//Start = chnr 4000 // True
//Start = chnr -155 // True



// 9. Given two integers and a boolean value. 
// Check if the first integer is even, the second divisible by 13 
// and the boolean value is True
// logical and operator is &&

check :: Int Int Bool -> Bool
check a b boolean =  (isEven a) && (b rem 13 == 0) && boolean

// Start = check 4 26 True // True
//Start = check 5 26 True // False
//Start = check 5 23 True // False
//Start = check 4 26 False // False
//Start = check 6 26 False // False



// 10. Check if a number is the sum of two other given numbers, in any order.
// (a == b + c) any order

// issum :: Int Int Int -> Bool
// issum a b c 
// | a + b == c = True


//Start = issum 10 6 3  // False
//Start = issum 10 6 4  // True


/* 11.  
Write a function that will take a digit less or equal to 5 (Int)
and return the respective word for it (as a String).
For example: input of 1 should output One; 
input of 0 should output Zero; 
input of 5 should output Five.
Anything that is not the digit (0-5) should output "Not less or equal to 5"
*/

digit_to_string :: Int -> String
digit_to_string x 
| x == 0 = "Zero"
| x == 1 = "One"
| x == 2 = "Two"
| x == 3 = "Three"
| x == 4 = "Four"
| x == 5 = "Five"
= "Not less or equal to 5"

//Start = digit_to_string 4 //"Four"
//Start = digit_to_string 0 //"Zero"
//Start = digit_to_string 5 //"Five"
//Start = digit_to_string 8 // 
//Start = digit_to_string 10
//Start = digit_to_string 10  //"Not less or equal to 5"
//Start = digit_to_string -1 //"Not less or equal to 5"
//Start = digit_to_string 42 //"Not less or equal to 5"



/* 12. 
Change a character if is small letter to uppercase and vice versa,
if is a special sign, leave as it is.
*/

ch :: Char -> Char
ch c
| isLower c = toUpper c 
| isUpper c = toLower c 
= c 

 
// Start = (ch 'a', ch 'z', ch 'A', ch 'Z', ch 'x', ch '%') // ('A','Z','a','z','X','%')

//version 2.
//ch2 :: Char -> Char
//ch2 c

//Start = (ch2 'a', ch2 'z', ch2 'A', ch2 'Z', ch2 'x', ch2 '%')



/* 13.
Is a number perfect square?
16 is the square of 4, so is perfect square.
*/

// isPerfectSquare :: Int -> Bool
// isPerfectSquare n = toReal(n) == x * x

// where 
    // x = sqrt toReal(n)

//Start = isPerfectSquare 9 // True
//Start = isPerfectSquare 1 // True
//Start = isPerfectSquare 0 // True
//Start = isPerfectSquare 10 // False
//Start = isPerfectSquare 17 // False
//Start = isPerfectSquare -1 // False

// 14. write a funtion which returns true if a is divisible by b
div_by :: Int Int -> Bool
div_by a b = a rem b == 0

//Start = div_by 16 4      // True



// 15. write a funtion which returns true if a is divisible by b or vice versa
div_any :: Int Int -> Bool
div_any a b = div_by a b || div_by b a

//a rem b == 0 || b rem a == 0

//Start = div_any 4 16     // True


//-------------------------------------R E C U R S I O N-----------------------------------------------



// 1. Add the numbers from 1..N in a recursive function, where N is positive.
addn :: Int -> Int
addn n 
| n <= 1 = 1
= n + addn (n-1)

// Start = addn 5
// 5 + addn 4
// 5 + 4 + addn 3
// 5 + 4 + 3 + addn 2
// 5 + 4 + 3 + 2 + addn 1 
// 5 + 4 + 3 + 2 + 1
// 15
//Start = addn -10 // N can not be zero or negative
//Start = addn 0 // N can not be zero or negative



// 2. Compute factorial n recursively, where n! = n*(n-1)! .
factor :: Int -> Int
factor n
| n <= 0 = abort "N can not be zero or negative"
| n == 1 = 1
= n * factor (n-1)

// Start = factor 5 // 120
// factor 5
// 5 * factor 4
// 5 * 4 * factor 3
// 5 * 4 * 3 * factor 2
// 5 * 4 * 3 * 2 * factor 1
// 5 * 4 * 3 * 2 * 1 * factor 0
// 5 * 4 * 3 * 2 * 1 * 1
// 120



// 3. Count the number of digits of a number.
countDigits :: Int -> Int
countDigits x 
| x < 10 = 1
= 1 + countDigits (x / 10)


// Start = countDigits 456 // 3



// 4. Add the digits of a number e.g. for 123 is 6.
sumDigits :: Int -> Int
sumDigits x 
| x < 10 = x 
= (x rem 10) + sumDigits(x/10)


// Start = sumDigits 12345 // 15
// 5 + sumDigits 12345/10  =  5 + sumDigits 1234
// 5 + 4 + sumDigits 1234/10 =  5 + 4 + sumDigits 123
// 5 + 4 + 3 + sumDigits 123/10 =  5 + 4 + 3 + sumDigits 12 
// 5 + 4 + 3 + 2 + sumDigits 12/10 =  5 + 4 + 3 + 2 + sumDigits 1 
// 5 + 4 + 3 + 2 + 1
// 15

//Start = sumDigits 5 // 5
//Start = sumDigits -54 // 9




// 5. Write a function that takes two arguments, say n and x, and computes their power,
// in 2 versions - with recursion and without recursion.
power :: Int Int -> Int
power x y = x^y 

//Start = power 2 5 // 32

powerrec  :: Int Int -> Int
powerrec x n
| n <= 0 = 1
= 2 * powerrec x (n-1)


// Start = powerrec 2 0 // 1
// Start = powerrec 2 4 // 16
// powerrec 2 4
// 2 * powerrec 2 3
// 2 * 2 * powerrec 2 2
// 2 * 2 * 2 * powerrec 2 1
// 2 * 2 * 2 * 2 * powerrec 2 0
// 2 * 2 * 2 * 2 * 1
// 16


// 6. sumsq n returns 1*1 + 2*2 + ... + n*n - with a pattern for 0
// sumsq :: Int -> Int
// sumsq x 
// | x <= 1 = 1
// = x*x + sumsq(x-1)

sumsq :: Int -> Int
sumsq 1 = 1   // pattern matching example !
sumsq n = n * n + sumsq(n-1)

// Start = sumsq 3 // 14


// version 2. - without pattern for 0
//sums :: Int -> Int
//sums n

//Start = sums 3
  


// 7. Compute for a given positive n the sum of 2i*(2i+1), for i from 1 to n. E.g. for n=3 the sum is 68.
f :: Int -> Int
f i 
| i == 0 = 0
= 2 * i * (2*i + 1) + f(i - 1)

    

// Start = f 3

// f 3
// 2*3*(2*3+1) + f 2
// 2*3*(2*3+1) + 2*2*(2*2+1) + f 1
// 2*3*(2*3+1) + 2*2*(2*2+1) + 2*1*(2*1+1) + f 0
// 2*3*(2*3+1) + 2*2*(2*2+1) + 2*1*(2*1+1) + 0
// 68



// 8. Compute the sum 1+ 2*2+ 3*3*3+ 4*4*4*4+ 5*5*5*5*5+ ...+n*n*n*...*n 
// where n is a positive number.
sumpowers :: Int -> Int
sumpowers x 
| x == 1 = 1
= x^x + sumpowers(x-1)

// Start = sumpowers 3

// sumpowers 3
// 3^3 + sumpowers 2
// 3^3 + 2^2 + sumpowers 1
// 3^3 + 2^2 + 1^1 + sumpowers 0
// 3^3 + 2^2 + 1^1 + 0
// 27+4+1
// 32
//Start = sumpowers 5
//Start = sumpowers 0


/*
~ -> negation sign 
logical statements -> || , &&
built-in operators -> min, max , isEven, toUpper, toLower, isUpper, isLower
recursion
 -> base condition

*/








