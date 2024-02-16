module mid2023

import StdEnv


/*1. Given a positive number of n digits, 
return the largest n-digit number.
Eg. 1233 the largest 4-digit value is 9999. */


intToList :: Int -> [Int]
intToList x 
| x < 10 = [x]
= [x rem 10] ++ intToList (x / 10)


firstHelper :: [Int] -> String
firstHelper lst = toString ['9' \\ x <- lst ]



larNdig :: Int -> Int
larNdig x = toInt (firstHelper (intToList x))



// Start = larNdig 1223 // 9999
// Start = larNdig 100 // 999
// Start = larNdig 99 // 99
// Start = larNdig 5 // 9



/*2. Given a positive integer and a digit, count 
how many times the digit is inside the integer.
Eg.	42484 and given 4 the output is 3 because 
42484 contains digit 4 three times. */

countDigit :: Int Int -> Int
countDigit x n = length [i \\ i <- intToList x |  i==n ]
// Start = countDigit 42484 4 // 3
// Start = countDigit 78885 8 // 3
// Start = countDigit 8 3 // 0
// Start = countDigit 0 0 // 1



/*3. Given an integer x and 2 integer lists return a 
list as products of x and same position values. 
For simplicity assume the lists are of same size.
At least one higher order function must be used!!!
Eg. x=6 , l1=[2,3] , l2=[4,5]
6*2*4 = 48 
6*3*5 = 90  
output = [48,90] */


fff :: Int [Int] [Int] -> [Int]
fff n lst1 lst2 = [n*i*j \\ i <- lst1 & j <- lst2]

// Start = fff 2 [1..5] [5..10] // [10,24,42,64,90]
// Start = fff 6 [2,3] [4,5] // [48,90]



/*4. Given two integer lists l1 and l2 containing amounts, 
return a list with tuples of the amounts that are not the same.
l1 has data from left to right, l2 has data from right to left.
Eg. l1 = [2,4,5,5,1,1] , l2 = [7,5,3,4,2]
         [2,4,3,5,7]
output = [(5,3),(1,7)] pairs with not same values on same positions */

notSame :: [Int] [Int] -> [(Int,Int)]
notSame lst1 lst2 = [(i,j) \\ i <- lst1 & j <- reverse lst2 | i <> j]


// Start = notSame [2,4,5,5,1,1] [7,5,3,4,2] // [(5,3),(1,7)]
// Start = notSame [1..5] [5..10] // [(1,10),(2,9),(3,8),(4,7),(5,6)]
// Start = notSame [1..2] [2..1] // []



/*5. Given a list and a digit, calculate how many times 
that digit is preceded by 0.
Eg. [2,0,2,3,4,5,2] 2 = 1, before 2, 0 is only once 
    [0,1,1,0,1,0,0,1] 1 = 3, before 1, 0 is 3 times */



//Start = pre [] 2 // 0
//Start = pre [2] 2 // 0
//Start = pre [2,0,2,3,4,5,2] 2 // 1
//Start = pre [0,1,1,0,1,0,0,1] 1 // 3
//Start = pre [0,3,0,4,0,5] 5 // 1
//Start = pre [1,2,3,4,5,6,7] 2 // 0
 


/*6. Given a list of lists of integer, remove any 
sublist that contains numbers less than 0, and transform 
all good sublists into 1 or 0 as: if the sum of the 
sublist is an even number, then 1, otherwise, 0.
Eg. [[9,-2,5,0],[2,4,8,5,4],[5,8,3,2],[1,8,0,1], [-1]]
remove any sublist that contains numbers less than 0:
[[2,4,8,5,4],[5,8,3,2],[1,8,0,1]]
check if the sum of the sublist is even:
[[2,4,8,5,4],[5,8,3,2],[1,8,0,1]]
[2,4,8,5,4] => 23 => not Even
[5,8,3,2] => 18 => Even
[1,8,0,1] => 10 => Even 	
transform the sublists into 1 or 0:
output: [0,1,1] */

sixHelper :: [Int] -> Int
sixHelper lst 
| (sum lst) rem 2 == 0  = 1
= 0

removeTransform :: [[Int]] -> [Int]
removeTransform [] = []
removeTransform [ x : xs ]
| length [i \\ i <- x | i < 0] > 0 = removeTransform xs
= [sixHelper x] ++ removeTransform xs


// Start = removeTransform [[9,-2,5,0],[2,4,8,5,4],[5,8,3,2],[1,8,0,1], [-1]] // [0,1,1]
// Start = removeTransform [[], []] // [1,1]
// Start = removeTransform [[9,4,4],[6,5,4]] // [0,0]
// Start = removeTransform [] // []




/*7. Given a list of integers, return the list of all 
the odd elements greater than any even element in the list.
Eg.	[11,13,4,6,5] -> [11,13]
11 > 4 and 11 > 6, 13 > 4 and 13 > 6
but: 5 < 6, so it is not returned */


helperOdd :: [Int] -> [Int]
helperOdd lst = [i \\ i <-lst | i rem 2 <> 0]

helperSeven :: [Int] -> Int
helperSeven lst 
| length (sort [i \\ i <-lst | i rem 2 == 0]) > 0 = last (sort [i \\ i <-lst | i rem 2 == 0])
= 0

greatest_odds :: [Int] -> [Int]
greatest_odds lst = [i \\ i <- helperOdd lst | i > helperSeven lst]


// Start = greatest_odds [11,13,4,6,5] // [11,13]
// Start = greatest_odds [2,4,6,5,87,1,2] // [87]  
// Start = greatest_odds [2,25,47,23,1,3,31,9,14,3] // [25,47,23,31]
// Start = greatest_odds [13,53,11,33] // [13,53,11,33]
// Start = greatest_odds [2,4,6] // []
// Start = greatest_odds [1,4,9,3,6,2,12] // []



/*8. Given a list of function and a list of integers.
Return a list of lists whose sublists are the 
results of the given list passed to each function.
Eg. list = [21,95,8,62,30], 
list of functions: [zeroAll, oneAll, doubleAll]
output: [zeroAll [21,95,8,62,30],oneAll [21,95,8,62,30],doubleAll [21,95,8,62,30]]
[[0,0,0,0,0],[1,1,1,1,1],[42,190,16,124,60] */

zeroAll ls = map (\x = 0) ls
oneAll ls = map (\x = 1) ls
doubleAll ls = map (\x = x*2) ls
tripleAll ls = map (\x = x*3) ls
halfAll ls = map (\x = x/2) ls
sqAll ls = map (\x = x^2) ls

falseAll ls = map (\x = False) ls
trueAll ls = map (\x = True) ls

zeroStrAll ls = map (\x = "0") ls
oneStrAll ls = map (\x = "1") ls
falseStrAll ls = map (\x = "False") ls
trueStrAll ls = map (\x = "True") ls


applyFunctions :: [([Int] -> [a])][Int] ->[[a]]
applyFunctions lstA lst = [i lst \\ i <-lstA ]

// Start = applyFunctions [zeroAll, oneAll, doubleAll, tripleAll, halfAll, sqAll] [21,95,8,62,30]
// [[0,0,0,0,0],[1,1,1,1,1],[42,190,16,124,60],[63,285,24,186,90],[10,47,4,31,15],[441,9025,64,3844,900]]

// Start = applyFunctions [falseAll, trueAll, trueAll, falseAll] [33]
//[[False],[True],[True],[False]]

//Start = applyFunctions [zeroStrAll, oneStrAll, falseStrAll, trueStrAll, zeroStrAll, oneStrAll] []
//[[],[],[],[],[],[]]

// Start = applyFunctions [] [4,5,3,5] 




/*9. Given a list of lists of strings, append to the end of 
each sublist the concatenated string formed by joining all 
the strings of that sublist. */


nineHelper :: [String] -> String
nineHelper [] = ""
nineHelper [x : xs] = x +++ nineHelper xs

concatAppend :: [[String]] -> [[String]]
concatAppend [] = []
concatAppend [x : xs] = [x ++ [nineHelper x]] ++ concatAppend xs


// Start = concatAppend [["apple", "banana", "cherry"], ["dog", "cat"], ["1", "2", "3"]] 
//[["apple", "banana", "cherry", "applebananacherry"], ["dog", "cat", "dogcat"], ["1", "2", "3", "123"]]
//Start = concatAppend [["hello", "world"], ["clean", "is", "awesome"], ["midterm", "exam"]] 
//[["hello", "world", "helloworld"], ["clean", "is", "awesome", "cleanisawesome"], ["midterm", "exam","midtermexam"]]



/*10. Give the ways to achieve a sum with 2 dice throws.
A dice has k faces which is given as first parameter, 
i.e. each dice has values from 1 to k.
Eg.: k=6 (each dice has values from 1 to 6)
and the target sum=10 (second parameter)
output: the good throws are (6, 4), (4, 6), (5, 5)
the order of the output does not matter. */

diceThrow :: Int Int -> [(Int,Int)]
diceThrow x n = [(i,j) \\ i <- [1..x] , j <- [1..x] | i + j == n]


// Start = diceThrow 6 10 // [(4,6),(5,5),(6,4)]
// Start = diceThrow 11 16 // [(5,11),(6,10),(7,9),(8,8),(9,7),(10,6),(11,5)]
// Start = diceThrow 2 8 // []



/*11. Given a list of student tuples containing (studentID, mark). 
Write a function that groups students by their marks. 
The output should be a list of tuples with a mark and the list 
of studentIDs who received that mark (with no duplicates). */


allGrades :: [(String,Int)] -> [Int]
allGrades lst = removeDup [snd x \\ x <- lst ]


elevenHelper :: [(String,Int)] Int  -> [String]
elevenHelper lst n  = [fst x \\ x <- lst | snd x == n]

// Start = elevenHelper [("student1", 3), ("student2", 4), ("student3", 3), ("student4", 5), ("student5", 4)] 3

group_students_by_marks :: [(String,Int)] -> [(Int,[String])]
group_students_by_marks lst = [(i,elevenHelper lst i) \\  i <- (allGrades lst) ]

// Start  = group_students_by_marks  [("student1", 3), ("student2", 4), ("student3", 3), ("student4", 5), ("student5", 4)] 
//[(3, ["student1", "student3"]), (4, ["student2", "student5"]), (5, ["student4"])]
// Start  = group_students_by_marks [("s1", 2), ("s2", 3), ("s3", 2), ("s4", 5), ("s5", 3), ("s6", 1)] 
//[(2,["s1","s3"]),(3,["s2","s5"]),(5,["s4"]),(1,["s6"])]
// Start  = group_students_by_marks [] // []



/*12. Given a square matrix, calculate the diagonal product.
Eg. [[1, 2, 3]
 	 [4, 5, 6]    Diagonal product: 1 * 5 * 9 = 45
 	 [7, 8, 9]] */


diagonalProduct :: [[Int]] -> Int
diagonalProduct [] = 1
diagonalProduct lst = prod [(lst !! (i-1))!! (i-1) \\ i <- [1..length lst] ]

// Start = diagonalProduct [[4,3,2],[5,2,7],[7,4,5]] // 40
// Start = diagonalProduct [[-4,3,-5,9],[-7,6,8,2],[8,-9,5,-1],[2,1,9,-4]] // 480
// Start = diagonalProduct [[0,4,9],[0,4,2],[-4,9,-6]] // 0
// Start = diagonalProduct [] // 1
