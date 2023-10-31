module extra
import StdEnv

// Neptune code : DDJIJZ 
// Name : Oyunbold Ganbold

// Ex1 - easy
//Given a list of integer and the function will have to check if all elements of the list are even or odd.

isAllOdd :: [Int] -> Bool
isAllOdd [] = True
isAllOdd [x : xs]
| x rem 2 == 1 = isAllOdd xs
= False


isAllEven :: [Int] -> Bool
isAllEven [] = True
isAllEven [x : xs]
| x rem 2 == 0 = isAllEven xs
= False

isAllEvenOdd :: [Int] -> Bool
isAllEvenOdd lst 
| isAllOdd (lst) || isAllEven(lst) = True
= False


// Start = isAllEvenOdd [2,10,16,4,8,100,0]     // True 	// all even
// Start = isAllEvenOdd [1,4,5,8,10] 			// False 	// mixed with even and odd
// Start = isAllEvenOdd [69,75,43,87] 			// True 	// all odd
// Start = isAllEvenOdd [-10,-8,100,999] 		// False	// mixed
// Start = isAllEvenOdd [0]                     // True






// Ex2 - easy
// Given a list, find all distinct combination of length 2. Repetition of elements is allowed.

combSub :: Int [Int] -> [[Int]]
combSub n [] = []
combSub n [x : xs]  = [[n,x] : combSub n xs]

// Start = combSub 1 [2,3]

comb :: [Int] -> [[Int]]
comb [] = []
comb [x : xs] 
| length xs >= 1 = combSub x ([x] ++ xs) ++ comb xs
= combSub x xs ++ comb xs


// Start = comb [1,2,3] // [[1,1],[1,2],[1,3],[2,2],[2,3]]
// Start = comb [1] // []
// Start = comb [1,2,3,4,5] // [[1,1],[1,2],[1,3],[1,4],[1,5],[2,2],[2,3],[2,4],[2,5],[3,3],[3,4],[3,5],[4,4],[4,5]]








// Ex3 - medium

/*
	Write a function that take 2 argument, char and int and produce a right triangle pattern as shown below.
	if the char is * and the int is 8, then the program should print this.
	*
	* *
	* * *
	* * * *
	* * * * *
	* * * * * *
	* * * * * * * 
	* * * * * * * * 
	hint: "\n" is a new line character.
	The integer will always be positive,	
*/

testing :: Char Int -> String
testing c 0 = "\n"
testing c n = toString(c) +++ " " +++ (testing c (n-1))


rightTrianglePattern :: Char Int -> String 
rightTrianglePattern s 0 = "\n"
rightTrianglePattern s n =  rightTrianglePattern s (n-1) +++ testing s n 


// Start = rightTrianglePattern 'x' 10
// Start = rightTrianglePattern 'o' 20
// Start = rightTrianglePattern '*' 8
// Start = rightTrianglePattern '0' 0	// empty string







// Ex4 - medium

/* 
    You are given a list of characters(let us call letters) that is sorted in non-decreasing order,
    and a character (target). There are at least two different characters in "letters".

    Return the smallest character in "letters" that is lexicographically greater than target.
    If such a character does not exist, return the first character in "letters".

    
    Example 1:
        Input: letters = ['c','f','j'], target = 'a'
        Output: 'c'
        Explanation: The smallest character that is lexicogrpahically greater than 'a' in letters is 'c'.

    Example 2:
        Input: letters = ['c','f','j'], target = 'c'
        Output: 'f'
        Explanation: The smallest character that is lexicogrpahically greater than 'c' in letters is 'f'.

    Example 3:
        Input: letters = ['x','x','y','y'], target = 'z'
        Output: 'x'
        Explanation: There are no characters in letters that is lexicographically greater than 'z' so we return letters[0].
    
    Constraints:
    letters is sorted in non-decreasing order.
    letters contains at least two different characters.
    target is a lowercase English letter.
*/

findGreater ::  [Char] Char -> Char

findGreater [x : xs] c
| length xs > 1  && toInt(last xs) < toInt(c)  = x
| toInt(x) > toInt(c) = x
= findGreater xs c


// Start = findGreater ['c','c','f'] 'c' // 'f'
// Start = findGreater ['c','f','j'] 'c' // 'f'
// Start = findGreater ['x','x','y','y'] 'z' // 'x'
// Start = findGreater ['a','b','c'] 'd' // 'a'
// Start = findGreater ['c','f','j'] 'a' // 'c'
// Start = findGreater ['a','a','b','d'] 'c' //'d'







// EX 5 - H A R D
/*  Self Dividing Numbers:
    A self-dividing number is a number that is divisible by every digit it contains.

    For example, 128 is a self-dividing number because 128 reminder 1 == 0, 128 reminder 2 == 0, and 128 reminder 8 == 0.
    A self-dividing number is not allowed to contain the digit zero.

    Given two integers left and right, return a list of all the self-dividing numbers in the range [left, right].

    Example 1:
    Input: left = 1, right = 22
    Output: [1,2,3,4,5,6,7,8,9,11,12,15,22]
    
    Example 2:
    Input: left = 47, right = 85
    Output: [48,55,66,77]
*/

dividers :: Int -> [Int]
dividers x
| x < 10 = [x]
= [x rem 10] ++ dividers (x/10)


checkSelfDivide :: Int [Int] -> Bool
checkSelfDivide n [] = False
checkSelfDivide n [x : xs]
| length xs == 0 && n rem x == 0 = True
| n rem x <> 0  = False
= checkSelfDivide n xs


lastCheck :: Int -> Bool
lastCheck n = checkSelfDivide n (dividers n)


selfDivNums :: Int Int -> [Int]
selfDivNums left right
| left > right = []
| left rem 10 == 0 = selfDivNums (left+1) right
| lastCheck left  = [left] ++ selfDivNums (left+1) right
= selfDivNums (left+1) right



// Start = selfDivNums 1 22 // [1,2,3,4,5,6,7,8,9,11,12,15,22]   
// Start = selfDivNums 47 85 // [48,55,66,77]
// Start = selfDivNums 23 46 // [24,33,36,44]
// Start = selfDivNums 25 32 // []
// Start = selfDivNums 100 0 // []





// EX 6 - H A R D

/* Reshape a matrix
There is a reshape function in MatLab that changes the dimenstion of a matrix with the given new dimension
and we want to implement this functionality in Clean. 
for example: Suppose we have a 1x20 matrix with values 1..20 and if we change the shape to 4x5 matrix 
result will be

1 5 9 13 17
2 6 10 14 18
3 7 11 15 19
4 8 12 16 20

As you can see the columns are filled first. See the start expressions for the input and expected output
P.S If you cannot solve like this then you can fill the rows first.
*/


whichElement :: [Int] [Int] Int Int -> [Int]
whichElement [] lst column rmdr = []
whichElement [x : xs] lst column rmdr 
| x rem column == rmdr = [ lst !! x : whichElement xs lst column rmdr]
= whichElement xs lst column rmdr


// Start = whichElement [0..19] [1..20] 5 0
// Start = whichElement [0..5] [1,2,3,1,2,3] 3 0
// Start = whichElement [0..5] [1,2,3,1,2,3] 3 1
// Start = whichElement [0..5] [1,2,3,1,2,3] 3 2

 


solve :: [Int] [Int] [Int] Int -> [[Int]]
solve indexList lst [] column  = []
solve indexList lst [x : xs] column = [whichElement indexList lst column x : solve indexList lst xs column]



// Start = solve [0..19] [1..20] [0,1,2,3] 4



converter:: [[Int]]  -> [[Int]]
converter lst = solve [0..(testing-1)] (flatten lst) [0..(column-1)] column

where column = length (flatten lst) / length lst
      testing= length (flatten lst)
    


// Start = converter [[1,2,4,7,6,1] , [2,9,4,1,7,3]]

reShape :: [[Int]] Int Int -> [[Int]]
reShape lst 1 row = [flatten lst]
reShape lst column row  = solve indexList (flatten (converter(lst))) remainderList column


where remainderList = [0..(column-1)] 
      indexList     = [0..(column*row-1)]



// Start = reShape [[1..20]] 4 5 // [[1,5,9,13,17], [2,6,10,14,18], [3,7,11,15,19], [4,8,12,16,20]]
// Start = reShape [[1,2],[3,4]] 1 4 // [[1,3,2,4]]
// Start = reShape [[1,2,4,7,6,1], [2,9,4,1,7,3]] 3 4 // [[1,9,7,7],[2,4,1,1], [2,4,6,3]] 

