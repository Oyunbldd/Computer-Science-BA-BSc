module midterm

import StdEnv 

/*-------------
  Functional Programming mid-term, 2023. Apr 26.
 
-- This solution was submitted and prepared by
   WRITE NAME AND NEPTUN HERE!!
-- <name, neptun> for the Functional Programming course.

-- I declare that this solution is my own work.
-- I have not copied or used third-party solutions.
-- I have not passed my solution to my classmates, 
   neither made it public.
-- The most serious consequence of a disciplinary fault 
   is dismissal from the University.
*/


/* 1. Abundant number 
An abundant number is a positive integer for which the 
sum of its proper divisors, except the number itself, 
is greater than the number. Write a function which checks 
if a given integer is abundant number or not.
Eg. 12 proper divisors 1+2+3+4+6=16 > 12 True
     8 proper divisors 1+2+4=7 < 8 False 
*/

//abundant :: Int -> Bool 

//Start = abundant 12 // True
//Start = abundant 18 // True
//Start = abundant 8 // False
//Start = abundant 20 // True
//Start = abundant 30 // True
//Start = abundant 3 // False


/* 2. Strong number
Create a function that verifies whether a positive integer 
is a strong number or not? A strong number is a type of number 
for which the sum of the factorials of its digits is equal to 
the number itself. 
Eg. 145 is strong number 1!+4!+5! = 1+24+120 = 145
*/

//strong_num :: Int -> Bool 

//Start = strong_num 145 // True 
//Start = strong_num 45
//Start = strong_num 2 // True 
//Start = strong_num 40585 // True 
//Start = strong_num 458 // False 



/* 3. Filtering
Given the list and a number K, replace all numbers that are divisible by K 
and replace by K at the power of the number's position, return resulting list.
Eg: [1,3,8,6,2], K=3 -> [3^1,3^3] -> [3,27]
*/

//filtered :: Int [Int] -> [Int]

//Start = filtered 3 [1,3,8,6,2] // [3,27]
//Start = filtered 5 [5,10,30] // [1,5,25]
//Start = filtered 5 [6..9] // []
//Start = filtered 2 [2,8,3,4,1] // [1,2,8]
//Start = filtered 10 [20,17] // [1]


/* 4. Absolute differences
Create a function which has arguments a list of integers and an integer k. 
After sorting the list, produce a list of tuples where each pair comprises 
of two integers from the sorted list, such that the absolute difference 
between the two integers equals to k. Remove duplicates from the resulting list.
Eg. [1,7,5,9,2,12,3] 2 -> [1,2,3,5,7,9,12] 2 -> [(1,3),(3,5),(5,7),(7,9)]
*/

//retrieve :: [Int] Int -> [(Int, Int)]

//Start = retrieve [1, 7, 5, 9, 2, 12, 3] 2 // [(1,3),(3,1),(3,5),(5,3),(5,7),(7,5),(7,9),(9,7)]
//Start = retrieve [5, 3, 1, 8, 2, 4, 7] 6 // [(1,7),(2,8),(7,1),(8,2)]
//Start = retrieve [2, 4, 6, 8] 2 // [(2,4),(4,2),(4,6),(6,4),(6,8),(8,6)]
//Start = retrieve [1, 1, 1, 1, 1] 0 // [(1,1)]
//Start = retrieve [] 2 // []
//Start = retrieve [1..5] 2 // [(1,3),(2,4),(3,1),(3,5),(4,2),(5,3)]
//Start = retrieve [1,2] 2 // []


/* 5. Find max index
Write a function that takes a list of integers and returns the index 
of the first occurrence of the maximum value in the list.
If the list is empty return -1.
Eg. [1, 2, 3, 4, 5] max is 5 which is on position 4
    [1, 1, 1, 1, 1] max is 1, first 1 is on position 0
*/

//find_max_index :: [Int] -> Int 

//Start = find_max_index [1, 2, 3, 4, 5] //  4
//Start = find_max_index [5, 4, 3, 2, 1] //  0
//Start = find_max_index [1, 3, 2, 5, 4] //  3
//Start = find_max_index [1, 1, 1, 1, 1] //  0
//Start = find_max_index [1, 2, 3, 3, 2, 3, 1] //  2
//Start = find_max_index [] //  -1


/* 6. Median
Write a function that for a list of integers returns the median value of the list,
which is the middle element, if the sorted list has odd number of elements, or the 
average of the two middle elements, if it has an even number of elements.
If the list is empty, then return -1.
Eg. [2, 1, 4, 3, 5] -> [1,2,3,4,5] -> middle value is 3
    [1, 2, 3, 4] is sorted, the average of 2 and 3 is 2.5 
*/

//median :: [Int] -> Real 

//Start = median [2, 1, 4, 3, 5] // 3
//Start = median [5] // 5
//Start = median [1, 2, 3, 4] // 2.5
//Start = median [10, 20, 30] // 20
//Start = median [10, 20, 30, 40] // 25
//Start = median [] // -1


/* 7. Prime sums
Create a function that accepts two lists of positive integers 
as arguments, and then returns a new list containing all pairs 
of elements (x, y) such that x is an element of the first list, 
y is an element of the second list, and x + y is a prime number.
Eg. [1,2,3,4,5] [1,2,3] result is [(1,1),(1,2),(2,1),(2,3),(3,2),(4,1),(4,3),(5,2)]
*/

//find_prime_sum_pairs :: [Int] [Int] -> [(Int,Int)] 

//Start = find_prime_sum_pairs [1, 6, 2, 3, 4, 5] [6, 7, 8, 9, 10] 
// [(1,6),(1,10),(6,7),(2,9),(3,8),(3,10),(4,7),(4,9),(5,6),(5,8)]
//Start = find_prime_sum_pairs [1, 2, 3, 4, 5] [1,2,3] 
// [(1,1),(1,2),(2,1),(2,3),(3,2),(4,1),(4,3),(5,2)]
//Start = find_prime_sum_pairs [1, 2, 3, 4, 5] [] // []



/* 8. Increase
Write a function that takes a list of integers and increases every 3rd integer 
by the sum of the two previous integers.
Eg. [1,2,3,4,5,6,7,8,9,10] -> [1,2,6,4,5,15,7,8,24,10]
    first 3 integers are 1,2,3 so 3 is increased by 1+2 = 3, so 3 becomes 6
    next 3 integers are 4,5,6 so 6 is increased by 4+5 = 9, so 6 becomes 15
    next 3 integers are 7,8,9 so 9 is increased by 7+8 = 15, so 9 becomes 24
*/

//inc3 :: [Int] -> [Int]

//Start = inc3 [1,2,3,4,5,6,7,8,9,10] //[1,2,6,4,5,15,7,8,24,10]
//Start = inc3 [3,6..27]//[3,6,18,12,15,45,21,24,72]
//Start = inc3 [2,4]//[2,4]
//Start = inc3 [2]//[2]
//Start = inc3 []//[]



/* 9. Map fun
Given a list of function that take an integer and return an integer,
write a function that takes a list of integers and returns a list of 
lists of integers, where every sublist is the result of applying 
each function to each integer in the list.
Eg. [1,2,3] and the 4 functions form funList:
we apply the 4 functions to 1 and get [1,2,2,0] // 1 rem 2 = 1, 1*2 = 2, 1+1 = 2, 1-1 = 0
we apply the 4 functions to 2 and get [0,4,3,1] // 2 rem 2 = 0, 2*2 = 4, 2+1 = 3, 2-1 = 1
we apply the 4 functions to 3 and get [1,6,4,2] // 3 rem 2 = 1, 3*2 = 6, 3+1 = 4, 3-1 = 2
so the result is [[1,2,2,0],[0,4,3,1],[1,6,4,2]] 
*/

funList :: [(Int -> Int)]
funList = [(\x-> x rem 2),(\x -> x*2), (\x -> x + 1), (\x -> x - 1)]

//mapFunList :: [Int] -> [[Int]]

//Start = mapFunList [1,2,3] //[[1,2,2,0],[0,4,3,1],[1,6,4,2]]
//Start = mapFunList [1..10] 
//[[1,2,2,0],[0,4,3,1],[1,6,4,2],[0,8,5,3],[1,10,6,4],[0,12,7,5],[1,14,8,6],[0,16,9,7],[1,18,10,8],[0,20,11,9]]
//Start = mapFunList [5] // [[1,10,6,4]]
//Start = mapFunList [] // []



/* 10. Max salary
Write a function that takes a list of tuples having the form (String,Int,Int)
first element is the name of a person, second is age, third is salary.
Return the name of the person with the highest sval = (salary/age) * 100
Eg. [("John",20,1000),("Mary",30,2000),("Peter",25,3000)] -> "Peter"
    sval for John = 1000/20 * 100 = 5000
    sval for Mary = 2000/30 * 100 = 6666.666666666667
    sval for Peter = 3000/25 * 100 = 12000
*/

//highestSval :: [(String,Int,Int)] -> String

//Start = highestSval [("John",20,1000),("Mary",30,2000),("Peter",25,3000)] // "Peter"
//Start = highestSval [("Drake", 16, 2500),("Kanye", 30, 10000),("Jay", 40, 20000),("Beyonce", 35, 15000)] // "Jay"


/* 11. Double until
Write a function that for a list of integers returns a list of integers:
double every integer until you reach the first negative integer,
from the rest of the list only return the even integers,
the first negative is only included if it is even.
Eg. [1,2,3,-1,4,5,6] -> [2,4,6,4,6] until -1 we double [1*2,2*2,3*2] = [2,4,6]
-1 is not even so we do not include it, from the rest of the list only include 
the even integers [4,6], result is [2,4,6,4,6]
*/

//doubleUntilNeg :: [Int] -> [Int]

//Start = doubleUntilNeg [1,2,3,-1,4,5,6] // [2,4,6,4,6]
//Start = doubleUntilNeg [1,2,3,-2,4,5,-6] // [2,4,6,-2,4,-6]
//Start = doubleUntilNeg [1,-1,3,3,3] // [2]
//Start = doubleUntilNeg [-1,3,3] // []
//Start = doubleUntilNeg [] // []


/* 12. Locations
Given 2 lists, the first list is the main list and the second list is a subset. 
Transform the second list into tuples, where each element is paired with its position in first list:
[(element, index of that element inside the main list)].
If the element does not exist in the main list, its index should be -1.
The index starts with 0. Your function has to work with any type a.
*/

//elementLocation :: [a] [a] -> [(a,Int)] | Eq a

//Start = elementLocation [7,5,8,0,9,3] [3,8,0,7] // [(3,5),(8,2),(0,3),(7,0)]
//Start = elementLocation [7,5,8,0,9,3] [3,8,0,7,10] // [(3,5),(8,2),(0,3),(7,0),(10,-1)]
//Start = elementLocation [7,5,8,0,9,3] [7,5,8,0,9,3] // [(7,0),(5,1),(8,2),(0,3),(9,4),(3,5)]
//Start = elementLocation [] [4,7,9,2] // [(4,-1),(7,-1),(9,-1),(2,-1)]
//Start = elementLocation [4,7,9,2] [] // []
