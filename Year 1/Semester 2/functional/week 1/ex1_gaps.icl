module ex1_gaps

import StdEnv



//Exercises 

f1 :: Int Int -> Int
f1 x y = abs ( x * y)


// Start = f1 -10 7

f2 :: Real Real -> Real 
f2 x y = sqrt x + sqrt y

// Start = f2 16.0 25.0


f3 :: String String String -> String 
f3 a b c = a +++ b +++ c 

Start = f3 "Testing"  "aa" "bb"

f4 :: Int Int -> Int 
f4 x y = gcd x y 


// Start= f4 120 25




// 1. Write a function to compute the absolute value of an integer number.

// Start = abs -4   // 4  abs built-in function

myabs :: Int -> Int
myabs x
| x < 0 = ~x  //unary - with one operator is ~ tilde
| x == 0 = 0
| x > 0 = x

//Start = myabs -4 // 4
//Start = myabs 8 // 8



// 2. Define a function maxi with two arguments that delivers the maximum of the two.
maxi :: Int Int -> Int
maxi x y 
| x > y = x
= y

//Start = maxi 34 56 // 56



// 3. Add 100 to a number.
add100 :: Int -> Int
add100 x = x + 100

//Start = add100 5  // 105



// 4. Triple a number.
triple :: Int -> Int
triple x = 3*x

//Start = triple 5 // 15



// 5. Check if a number is odd.
isoddnr :: Int -> Bool  // isEven, isOdd built-in function
isoddnr x = ((x rem 2) == 1)

//Start = isoddnr 6 // False
//Start = isoddnr 21 // True



// 6. Say Hello to the World!
st :: String String -> String
st a b = a +++ b

//Start = st "Hye" " World!"



// 7. Compute the cube of a number.
cube :: Int -> Int
cube x = x^3 // ^ caret - power operator

//Start = cube 4  // 64
//Start = cube 8  // 512

cube2 :: Int -> Int
cube2 x = x*x*x

//Start = cube2 4 // 64



//////////// TO DO 
// In each exercise a keyword or variable or operator is missing.
// Complete the gaps marked by ??? correctly!



// 8. Define a function mini that has two arguments that delivers the minimum of the two values.
/* 
mini :: Int Int -> Int
mini x y 
| x < y = x
| x == y = x
| x > y = y 
*/

//Start = mini 34 56  // 34



// 9. Find the 10th muliple of a number.
/* 
times10 :: Int -> Int
times10 x = 10 * x
*/

//Start = times10 5 // 50
//Start = times10 0 // 0



// 10. Check if a number is even.
/*
isevenr :: Int -> Bool  // isEven, isOdd built-in function
isevenr x = ((x ??? 2) == 0)
*/

//Start = isevenr 61 // False
//Start = isevenr 22 // True



// 11. Given an integer, write a function that returns the last digit.
/*
lastDigit :: Int -> Int
lastDigit nr = nr rem ???
*/

//Start = lastDigit 124 // 4
//Start = lastDigit 4000 // 0
//Start = lastDigit 123442 // 2



// 12. Check if a number is multiple of 10.
/*
ismult10 :: Int -> Bool
ismult10 x = (x rem 10 ??? 0)
*/

//Start = ismult10 20 // True
//Start = ismult10 201 // False

// long version
/*
ismult102 :: Int -> Bool
ismult102 x 
| x rem 10 == 0 = True
| ??? = False
*/

//Start = ismult102 20 // True
//Start = ismult102 202  // False



// 13. Divide a number by 10, do not loose precision!!
/*
div10 :: Int -> ???
div10 x = (toReal x) / 10.0
*/

//Start = div10 12345
//Start = div10 6789



// 14. Given two logical statements check if both are true!
/*
boolch :: Bool Bool -> Bool
boolch a b = a ??? b
*/

//Start = boolch True False 
//Start = boolch True True



// 15. Check if a number is positive or smaller then -100!
/*
chnr :: Int -> Bool
chnr x = (x > 0) ??? (x < -100)
*/

//Start = chnr 4000
//Start = chnr -155



// 16. Compute the 5th power of a value! 
/*
power5 :: Int -> Int
power5 x = x ??? 5
*/

//Start = power5 2
//Start = power5 10



// 17. Find the difference between the product and the sum of two values!
/*
diffps :: Int Int -> Int
diffps x y = x???y	 - (x???y)
*/

//Start = diffps 10 20
//Start = diffps 100 50 



// 18. Change the sign of a value and compute the cube of it!
/*
chsc :: Int -> Int
chsc x = (???)^???
*/

//Start = chsc 2
//Start = chsc -10



////////////



//////////// TO DO
// Complete the functions !


// 19. Given three integer numbers a, b and c. 
// Check if both a and b have the same remainder when divided by c.
//sameRem :: Int Int Int -> Bool
//sameRem a b c = 


//Start = sameRem 12 4 4 // True
//Start = sameRem 12 4 3 // False
//Start = sameRem 13 4 3 // True



// 20. Given two integers and a boolean value. 
// Check if the first integer is even, the second divisible by 13 
// and the boolean value is True
// logical and operator is &&

//check :: Int Int Bool -> Bool
//check x y b = 


//Start = check 4 26 True // True
//Start = check 5 26 True // False
//Start = check 5 23 True // False
//Start = check 4 26 False // False
//Start = check 6 26 False // False



// 21. Check if a number is the sum of two other given numbers, in any order.
// (a == b + c) any order
//issum :: Int Int Int -> Bool
//issum a b c = 

//Start = issum 10 6 3  // False
//Start = issum 10 6 4  // True



// 22. Check if a number is divisible by 9! 
//div9 :: Int -> Bool
//div9 x = 

//Start = div9 81 // True
//Start = div9 800 // False



// 23. Write a function that squares its argument.
//sq :: Int -> Int
//sq x = 

//Start = sq 8 // 64
//Start = sq 0 // 0



// 24. Write a function to compute a^3 + b^3 + c*d!
// expression :: Int Int Int Int -> Int
// expression a b c d =

//Start = expression 1 2 3 4 // 21
//Start = expression -1 -2 -3 -4 // 3



// 25. Granpa went shopping with 20000 Ft.
// He bought 5 milks each 300, 10 croissants 400 each, and flower for 2000.
// How much money left after shopping? 
// granpa :: Int Int Int Int -> Int
// granpa original m c f = 

//Start = granpa 20000 5 10 1 // 12500
//Start = granpa 20000 10 5 2 // 11000


