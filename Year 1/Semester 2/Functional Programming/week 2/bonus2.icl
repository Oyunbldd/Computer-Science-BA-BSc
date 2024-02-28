module bonus2
import StdEnv


// Check if a number is multiple of 10.

ismult10 :: Int -> Bool
ismult10 x = x rem 2 == 0


// Start = ismult10 20 // True
// Start = ismult10 201 // False

// Find the difference between the product and the sum of two values!

diffps :: Int Int -> Int
diffps x y = abs((x+y) - (x*y))


// Start = diffps 10 20 // 170
// Start = diffps 100 50 // 4850



// Change the sign of a value and compute the cube of it!

chsc :: Int -> Int
chsc x = ~(x^3)


// Start = chsc 2 // -8
// Start = chsc -10 // 1000


// Given three integer numbers a, b and c. 
// Check if both a and b have the same remainder when divided by c.

sameRem :: Int Int Int -> Bool
sameRem a b c 
| a rem c  == b rem c = True
= False

// Start = sameRem 12 4 4 // True
// Start = sameRem 12 4 3 // False
//Start = sameRem 13 4 3 // True

// Compute the 5th power of a value! 

power5 :: Int -> Int
power5 x = x^5


// Start = power5 2 // 32
//Start = power5 10 // 10000

/* 
Write GetLastPositive function which returns 
the number decreased by the last digit of the 
number if its positive and -1 if the number is negative.
*/

GetLastPositive :: Int -> Int 
GetLastPositive 0 = 0
GetLastPositive numb 
| numb < 0 = -1
= numb - (numb rem 10)


 
// Start = GetLastPositive 5856 // 5850  
//Start = GetLastPositive 689255 // 689250
// Start = GetLastPositive 0 // 0
//Start = GetLastPositive 8 // 0
// Start = GetLastPositive -8554 // -1

 

/* 
Given two real numbers decide whether the number obtained by the
sum of the two numbers has the digit after the decimal point
Even or not, assume there is only one number after the decimal point.  
Hint: you can use (toInt) function.  
*/
 
IsEvenDecimal :: Real Real -> Bool
IsEvenDecimal n1 n2  = (dn + dt) rem 2 == 0
where
    dn = toInt(n1 * 10.0) rem 10
    dt = toInt(n2 * 10.0) rem 10

// Start = IsEvenDecimal 5.3 4.6 // False
// Start = IsEvenDecimal 4.1 4.6 // False
// Start = IsEvenDecimal 1.2 6.6 // True
//Start = IsEvenDecimal 1.5 7.5 // True 

/* 
Compute the average of 5 numbers!
*/

av5 :: Int Int Int Int Int -> Real
av5 a b c d e = toReal (a+b+c+d+e) / 5.0

//Start = av5 1 2 3 4 5 // 3
//Start = av5 3 5 7 9 10 // 6.8


/* 
Given 5 numbers, determine if the numbers 
are in sorted order (in increased order).
*/

isSorted :: Int Int Int Int Int -> Bool
isSorted a b c d e 
| a <= b && b <= c  && c <= d && d <= e = True
= False

//Start = isSorted 1 1 1 1 1 // True
// Start = isSorted 1 2 3 4 5 // True
//Start = isSorted 4 3 2 1 0 // False




/* 
Given two numbers, if both numbers are odd return their product,
if both numbers are even return their sum,
if one is even the other odd, return 0.
*/ 

oddeven :: Int Int -> Int
oddeven x y
| isEven x && isEven y = x + y
| isOdd x && isOdd y = x * y
= 0


//Start = oddeven 474 8983 //0
// Start = oddeven 6 6 //12
//Start = oddeven 6 7 //0
// Start = oddeven 7 7 // 49
//Start = oddeven 8 8 // 16




/* 
Create a function which transforms the number of days to years, weeks and days. 
1 year = 365 days (ignoring leap year)
For example: 375 days = 1 year 1 week 3 days.
Hints: you can use the toString function: 
the function transforms the given input to String (e.g toString 5  ->  "5"),
don't forget the paranthesis!
*/

//transform :: Int -> String 
transform x = toString(year) +++ " year " +++ toString(week) +++ " week " +++ toString(day) +++ " days"
where 
    year  =  x / 365
    week = (x - (year*365)) / 7
    day = x - (year * 365) - (week * 7)

// Start = transform 375 // "1 year 1 week 3 days"
//Start = transform 365 // "1 year 0 week 0 days"
//Start = transform 1050 // "2 year 45 week 5 days"
//Start = transform 2500 // "6 year 44 week 2 days"








