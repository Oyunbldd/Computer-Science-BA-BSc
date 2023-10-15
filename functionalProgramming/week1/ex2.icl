module ex2

import StdEnv 


/* 1.
Write GetLastPositive function which returns 
the number decreased by the last digit of the 
number if its positive and -1 if the number is negative.
*/

GetLastPositive :: Int -> Int 
GetLastPositive x 
| x < 0 = -1
= x - (x rem 10)

// Start = GetLastPositive 5856 // 5850  
//Start = GetLastPositive 689255 // 689250
//Start = GetLastPositive 0 // 0
// Start = GetLastPositive 8 // 0
// Start = GetLastPositive -8554 // -1

 

/* 2.
Given two real numbers decide whether the number obtained by the
sum of the two numbers has the digit after the decimal point
Even or not, assume there is only one number after the decimal point.  
Hint: you can use (toInt) function.  
*/
 
IsEvenDecimal :: Real Real -> Bool 
IsEvenDecimal a b = (toInt(a * 10.0) + toInt(b *10.0)) rem 2 == 0

// Start = IsEvenDecimal 5.3 4.6 // False
//Start = IsEvenDecimal 4.1 4.6 // False
// Start = IsEvenDecimal 1.2 6.6 // True
//Start = IsEvenDecimal 1.5 7.5 // True 



/* 3.  
Write a function that will take a digit less or equal to 5 (Int)
and return the respective word for it (as a String).
For example: input of 1 should output One; 
input of 0 should output Zero; 
input of 5 should output Five.
Anything that is not the digit (0-5) should output "Not less or equal to 5"
*/

digit_to_string :: Int -> String
digit_to_string s
| s == 0 = "Zero"
| s == 1 = "One"
| s == 2 = "Two"
| s == 3 = "Three"
| s == 4 = "Four"
| s == 5 = "Five"
= "Not less or equal to 5"

// Start = digit_to_string 4 //"Four"
//Start = digit_to_string 0 //"Zero"
// Start = digit_to_string 5 //"Five"
//Start = digit_to_string 8 //"Not less or equal to 5"
// Start = digit_to_string 10 //"Not less or equal to 5"
//Start = digit_to_string 10  //"Not less or equal to 5"
//Start = digit_to_string -1 //"Not less or equal to 5"
//Start = digit_to_string 42 //"Not less or equal to 5"



/* 4. 
Change a character if is small letter to uppercase and vice versa,
if is a special sign, leave as it is.
*/

ch :: Char -> Char
ch c 
| toInt(c) >= 97 || toInt(c)<=122 = toUpper(c)
= c
 
// Start = (ch 'a', ch 'z', ch 'A', ch 'Z', ch 'x', ch '%') // ('A','Z','a','z','X','%')





/* 5.
Is a number perfect square?
16 is the square of 4, so is perfect square.
*/

isPerfectSquare :: Int -> Bool
isPerfectSquare x 
| toInt(sqrt(toReal(x))) * toInt(sqrt(toReal(x))) == x = True
= False

// Start = isPerfectSquare 9 // True
// Start = isPerfectSquare 1 // True
//Start = isPerfectSquare 0 // True
//Start = isPerfectSquare 10 // False
// Start = isPerfectSquare 17 // False
//Start = isPerfectSquare -1 // False



/* 6.
Compute the average of 5 numbers!
*/

av5 :: Int Int Int Int Int -> Real
av5 a b c d e = toReal(a+b+c+d+e) / 5.0

// Start = av5 1 2 3 4 5 // 3
// Start = av5 3 5 7 9 10 // 6.8



/* 7.
Given an integer, find the sum of the square of 
each number between 1 and that given number.
if the given integer is 5, then 5^2+4^2+3^2+2^2+1^2 = 55
hint: https://www.cuemath.com/algebra/sum-of-squares/
*/

SquareSum :: Int->Int
SquareSum x = (x * (x+1) * ((x*2)+1))/6

// Start = SquareSum 5 // 55
//Start = SquareSum 0 // 0
//Start = SquareSum 1 // 1
// Start = SquareSum 100 // 338350



/* 8.
Given 5 numbers, determine if the numbers 
are in sorted order (in increased order).
*/

isSorted :: Int Int Int Int Int -> Bool
isSorted a b c d e 
| a <= b && b <= c && c <=d && d <= e = True
= False 

//Start = isSorted 1 1 1 1 1 // True
// Start = isSorted 1 2 3 4 5 // True
// Start = isSorted 4 3 2 1 0 // False



/* 9.
Given two numbers, if both numbers are odd return their product,
if both numbers are even return their sum,
if one is even the other odd, return 0.
*/ 

oddeven :: Int Int -> Int
oddeven x y 
| isOdd(x) && isOdd(y) = x * y
| isEven(x) && isEven(y) = x + y
= 0

// Start = oddeven 474 8983 //0
//Start = oddeven 6 6 //12
//Start = oddeven 6 7 //0
// Start = oddeven 7 7 // 49
//Start = oddeven 8 8 // 16



/* 10. 
Create a function which transforms the number of days to years, weeks and days. 
1 year = 365 days (ignoring leap year)
For example: 375 days = 1 year 1 week 3 days.
Hints: you can use the toString function: 
the function transforms the given input to String (e.g toString 5  ->  "5"),
don't forget the paranthesis!
*/

transform :: Int -> String 
transform x = toString(year) +++ " year " +++ toString(week) +++ " week " +++ toString(day) +++ " day"

where year = x / 365
      week = (x - (year * 365)) / 7
      day = x - (year * 365) - (week * 7 )

// Start = transform 375 // "1 year 1 week 3 days"
//Start = transform 365 // "1 year 0 week 0 days"
//Start = transform 1050 // "2 year 45 week 5 days"
// Start = transform 2500 // "6 year 44 week 2 days"
