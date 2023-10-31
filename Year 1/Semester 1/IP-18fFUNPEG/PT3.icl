module PT3
import StdEnv

//REMEMBER: PLAGIARISM IS ZERO!

//Please write your neptun code here: DDJIJZ

//Divide problem into multiple functions.


/*
You are getting two integers as an input. Given an integer n and k, count the total number of digit 
k appearing in all non-negative integers less than or equal to n. If k appears more than one times in number,
still count as 1. 

Example: n=13, k=1
All non-negative integers less than or equal to 13 are: 1,2,3,4,5,6,7,8,9,10,11,12,13 -> from these numbers we
encounter 1 in 1,10,11,12,13, so output should be 5. For 11, we are counting 1 one times.
*/

helperFunction :: Int -> [Int]
helperFunction n 
| n < 10 = [n]
= [n rem 10] ++ helperFunction(n/10)


// Start = helperFunction 12345



sublist :: [Int] Int -> Int
sublist [] n = 0
sublist [x : xs] n 
| isMember n (helperFunction x) = 1 + sublist xs n
= sublist xs n



// Start = sublist [1..13] 1 

countDigitK :: Int Int -> Int
countDigitK n k = sublist [1..n] k


// Start = countDigitK 13 1 //5
// Start = countDigitK 0 9 // 0
// Start = countDigitK 100 5 // 19  

//5 , 15 ,25 ,35 ,45, 50,51,52,53,54,55,56,57,58,59,65,75,85,95









