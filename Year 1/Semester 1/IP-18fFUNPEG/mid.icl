module mid
import StdEnv

/* Functional Programming mid-term retake, 2023. Dec 20.
-- This solution was submitted and prepared by
WRITE NAME AND NEPTUN HERE!! <Oyunbold Ganbold, DDJIJZ>
-- for the Functional Programming course.
-- I declare that this solution is my own work.
-- I have not copied or used third-party solutions.
-- I have not passed my solution to my classmates, neither made it public. */


/* 1.------------
Write a recursive integer division function
without a / operator.
If not divisible, write "not divisible".
Simple usage of / will not be considered.
*/


division :: Int Int -> Int
division x y
| x rem y <> 0 = abort "not divisible"
= x / y
//Start = division 123 10 //"not divisible"
//Start = division 12345670 10 //1234567
//Start = division 120 5 //24
//Start = division 0 3 //0
//Start = division 1 3 //"not divisible"


/* 2.------------
The Collatz Conjecture states that for any positive
natural number n, this process:
if n is even, divide it by 2
if n is odd, multiply it by 3 and add 1
repeat
will eventually reach n = 1.
Eg.: if n = 20, the resulting sequence will be:
[ 20, 10, 5, 16, 8, 4, 2, 1 ]
20 / 2 = 10
10 / 2 = 5
(5 * 3) + 1 = 16
16 / 2 = 8
8 / 2 = 4
4 / 2 = 2
2 / 2 = 1
Given this number n, print out this sequence.
*/
collatz :: Int -> [Int]
collatz x
| x == 1 = []
| x rem 2 == 0 = [x/2] ++ collatz (x/2)
= [x] ++ [x*3+1] ++ collatz (x*3+1)
// Start = collatz 20 // [20,10,5,16,8,4,2,1]
// Start = collatz 12 // [12,6,3,10,5,16,8,4,2,1]
//Start = collatz 5 // [5,16,8,4,2,1]
//Start = collatz 21 // [21,64,32,16,8,4,2,1]
// Start = collatz 13 // [13,40,20,10,5,16,8,4,2,1]


/* 3.------------
Given two lists of integers, return a tuple containing
the absolute values of the maximum and the minimum
difference between a number in the first list
and a number in the second list as follows:
for [3,10,5] [20,7,15,8] -> (17,2)
abs (3 - 20) = 17 -> greatest number
abs (10 - 8) = 2 -> smallest number
Consider the lists are not empty.
*/

threeHelper :: [Int] -> Int
threeHelper lst1 = maxList lst1

//Start = threeHelper [1,3,4]

max_min :: [Int] [Int] -> (Int, Int)
max_min lst1 lst2 = (abs((minList lst1) - (maxList lst2) ) , abs( (maxList lst1) - (minList lst2) ))
// Start = max_min [3,10,5] [20,7,15,8] // (17,3)
//Start = max_min [3] [20] // (17,17)
//Start = max_min [3,10,5] [3,10,5] // (7,0)
//Start = max_min [1,2,3,4,5] [6,7,8,9,10] // (9,1)
//Start = max_min [1,2,3,4,5] [1,2,3,4,5] // (4,0)

/* 4.------------
You have a starting money and you made multiple purchases.
Calculate the remaining money. The money is given as a tuple
of (dollar, cent) where each dollar is equal to 100 cents.
If no more cents left after a certain purchase you can
exchange a dollar with cents.
Eq. purchases (2,20) [(1,99)] means starting money is
2 dollars 20 cents after the purchase (1,99) the (0,21) left.

*/

allSum :: [(Int,Int)] -> (Int,Int)
allSum lst = (sum[fst x\\ x<-lst],sum[snd x\\ x<-lst] )


//Start = allSum [(1,23), (4, 57), (8, 99)]

purchases :: (Int, Int) [(Int,Int)] -> (Int, Int)
purchases tp ls
| snd tp < snd (allSum ls) = (fst tp - fst (allSum ls)-1 , snd tp - snd(allSum ls)+100)
= (fst tp - fst (allSum ls) , snd tp - snd(allSum ls))


// Start = purchases (100, 100) [(1,23), (4, 57), (8, 99)] // (86,21)
// Start = purchases (1,1) [] // (1,1)
// Start = purchases (2,20) [(1,99)] // (0,21)


/* 5.------------
Given a list of integers, rearrange the list so that zeros
appear first, followed by positive and then negative numbers.
Additionally, sort the positive numbers in descending order
and the negatives in ascending order within their categories.
*/

fiveHelper :: [Int] -> [Int]
fiveHelper lst = sort [x \\ x <-lst | x < 0]

rearrange :: [Int] -> [Int]
rearrange lst = [x \\ x <- lst | x == 0 ] ++ reverse (sort[x \\ x <- lst | x >0]) ++ fiveHelper (lst)

//Start = rearrange [4, -6, 0, 1, -2, 0, -3, 2, 7] // [0,0,7,4,2,1,-6,-3,-2]
//Start = rearrange [3, 2, 1, 2, 0, -2, -1, -3] // [0,3,2,2,1,-3,-2,-1]
// Start = rearrange [7, -3, -10, 0, 8, 2, -7, 1, -4, 0, 5, -1] // [0,0,8,7,5,2,1,-10,-7,-4,-3,-1]




/* 6.------------
Given a positive number, map its digits to the corresponding
alphabet in the mapping table [(1, 'A'), (2, 'B'), … (26, 'Z')],
and return the decoded character sequence. Assume that each
character is split by digit 0.
Input: 10203
Output: ['A','B','C']
Input: 12021
Output: ['L','U']
*/




//decoding :: Int -> [Char]
//decoding n

//Start = decoding 10203 // ['A','B','C']
//Start = decoding 12021 // ['L','U']
//Start = decoding 0 // []
//Start = decoding 30120501014 // ['C','L','E','A','N']



/* 7.------------
Given a list of tuples, write a function to determine whether
any two tuples in the list have the same sum of their elements.
If any such pairs are found, return True; otherwise, return False.
Eg. the list of tuples [(2, 3), (4, 1), (5, 0), (2, 6)],
the function returns True because there are two pairs of tuples with
the same sum of elements: (2, 3) and (5, 0) both sum to 5.
*/


sevenHelper :: [Int] -> Bool
sevenHelper lst
| length (removeDup lst) == length lst = False
= True

hasEqualSumPairs :: [(Int,Int)] -> Bool
hasEqualSumPairs lst = sevenHelper [fst x + snd x \\ x <- lst]
// Start = hasEqualSumPairs [(2, 3), (4, 1), (5, 0), (2, 6)] // True
// Start = hasEqualSumPairs [(1, 2), (3, 4), (5, 6), (7, 8)] // False
// Start = hasEqualSumPairs [(5, 5), (3, 4), (1, 9), (6, 2)] // True




/* 8.------------
Given a list of list of integers, merge every 2 neighbour
lists and find its median. Combine first and second,
third and fourth and so on. If last one doesn't have
neighbour, just find median for that one.
The median is the value in the middle of a data set,
meaning that 50% of data points have a value smaller
or equal to the median and 50% of data points have
a value higher or equal to the median.
[1,2,3] median is 2
[1,2,3,4] median is (2 + 3) / 2 = 2.5
*/

ehelper :: [Int] Int -> Real
ehelper [] n = 0.0
ehelper lst n
| n rem 2 <> 0 = toReal(lst!! (n/2))
= toReal ((lst!!(n/2)) + (lst!!((n / 2)-1))) / toReal(2)

// Start = ehelper [1,2,3,4] 4


medianAll :: [[Int]] -> [Real]
medianAll lst = [ehelper x (length x) \\ x <- lst]

// Start = medianAll [[0,1],[2],[1,3,4,6,10,20]]
//median of [0,1,2] -> 1, median of [1,3,4,6,10,20] -> (4+6)/2=5 output is [1,5]
//Start = medianAll [[3,1],[2],[1,3],[3,2],[6,5]]//[2,2,2,2.5,5.5]
//Start = medianAll []//[]
//Start = medianAll [[],[1,15,2,100,53],[17],[22,54,9],[1,11,111,11111]]//[15,19.5,61]



/* 9.------------
In a lucky number the sum of the odd-positioned digits
and the sum of the even-positioned digits are the same.
For 12345, sum of odd-positioned digits: 1+3+5=9
sum of even-positioned digits: 2+4=6
So 12345 is not a lucky number.
For 2332, sum of odd-positioned digits: 2+3=5
sum of even-positioned digits: 3+2=5
So 2332 is a lucky number.
a) Write a function to check if a number is a lucky number.
b) Write a function to check how many numbers in a list
are lucky numbers.
*/

intToList :: Int -> [Int]
intToList x
| x < 10 = [x]
= intToList (x/10) ++ [x rem 10 ]

nineHelper :: [Int] [Int] -> Bool
nineHelper lst1 lst2
| sum [x \\ x <-lst1] == sum [y \\ y<-lst2] = True
= False



lucky_num :: Int -> Bool
lucky_num n = nineHelper ([x \\ x <- intToList n & j <- [0..] | j rem 2 == 0]) ([x \\ x <- intToList n & j <- [0..] | j rem 2 <> 0])


//Start = lucky_num 65494 //True
//Start = lucky_num 9713 //True
//Start = lucky_num 13067 //False
//Start = lucky_num 978739 //False

lucky_nums :: [Int] -> Int
lucky_nums lst = length[x \\ x<-lst | lucky_num x]
//Start = lucky_nums [1..99] //9
//Start = lucky_nums [4096..65536] //3454
//Start = lucky_nums [22099..22274]//15





/* 10.------------
Two players were playing flip the bottle, they played in
turns one after another. The result of the flips was stored
in a list in the following way [player1,player2,player1,player2...]
If the bottle was flipped, then True was written, else False.
The player who makes at least 4 flips wins.
For simplicity assume there will always be a winner
and the list will have even number of values.
Make a function that takes a list of Booleans and returns
which player won the game.
Eg. [True,False,True,True,False,True,True,False,True,True]
player1 got True,True,False,True,True - 4 Trues' -> player1 won
player2 got False,True,True,False,True
*/
winner :: [Bool] -> String
winner lst
| length[1 \\ x <-lst & i<-[0..] | (i rem 2 == 0) && x == True] > length[1 \\ x <-lst & i<-[0..] | (i rem 2 <> 0) && x == True] = "player1 won"
= "player2 won"

//Start = winner [True,False,True,True,False,True,True,False,True,True] // "player1 won"
// Start = winner [False, False,True, True,False,True,False ,True,False,True,True,False,True,False,True,False] // "player2 won"



/* 11.------------
We are given a list of tuples which represent data
from a pc store. Each tuple contains 3 data
- The model of the pc
- The size of the pc
- The price of the pc
a) Determine the smallest available size for a pc
b) Determine the highest available price for a pc
c) Give the names of all those pc's whose price is
less than or equal to a given x.
*/


//minSize :: [(String,Int,Int)] -> Int
//maxPrice :: [(String,Int,Int)] -> Int
//f :: [(String,Int,Int)] Int -> [String]
//Start = minSize pc_store_data // 13
//Start = minSize pc_store_data_2 //14
//Start = maxPrice pc_store_data // 800
//Start = maxPrice pc_store_data_2 // 900
//Start = f pc_store_data 600 // ["PC1","PC4"]
//Start = f pc_store_data_2 900 // ["PC1","PC2","PC3","PC4"]

/* //12
A Smith number is a composite number, the sum of
whose digits is the sum of the digits of its prime factors
obtained as a result of prime factorization (excluding 1).
The first few Smith numbers are 4, 22, 27, 58, 85, 94, 121 ...
27 is a Smith number because 2 + 7 = 9,
27's prime factors are 3*3*3, and 3 + 3 + 3 = 9.
The smallest number in the range [3, 27]
that divides 27 without leaving a remainder is 3.
The smallest number in the range [2, 9]
that divides 9 without leaving a remainder is 3.
The smallest number in the range [2, 3]
that divides 3 without leaving a remainder is 3.
Given a positive integer number, write a function to
determine whether it is a Smith number or not.
*/
//isSmith :: Int -> Bool
//Start = isSmith 27 // True
//Start = isSmith 85 // True
//Start = isSmith 12 // False
//Start = isSmith 22 // True
//Start = isSmith 4 // True

