module arrays
import StdEnv

arrayToList :: {Int} -> [Int]
arrayToList arr = [x \\ x <-: arr]

listToArray :: [Int] -> {Int}
listToArray list = {c \\ c <- list}

//String is array of characters

charsToStr :: [Char] -> String
charsToStr charList = {x \\ x <- charList}

//Start = charsToStr ['c','l','e','a','n']


//-------------1------------

// Create arrays using comprehensions for the followings:
// - powers of 10 from 1st to the 10th
arr :: {Int}
arr = {10^x \\ x<-[1..10]} 

//Start :: {Int}
//Start = arr

// - {(0,0),(1,1),..., (10,10)}
arr1 :: {(Int,Int)}
arr1 = {(x,x) \\ x<-[0..10]}

//Start :: {(Int,Int)}
//Start = arr1

//Start :: (Int, Int)
//Start = arr1.[3]

// - one number at its half, and so on until is 0 
// e.g. {100, 50, 25, 12, 6, 3, 1} 
f :: Int -> [Int] 
f n = takeWhile ((<)0) (iterate (\ x= x/2) n)

//Start = f 100 

arr2 :: Int -> {Int}
arr2 n = {x \\ x<-f n}

// Start :: {Int}
// Start = arr2 100





//-------------2------------
/* Given a character and a String, remove the given character from the string */

remChar :: Char String -> String
remChar c arr = {x \\ x <-:arr | x <> c}

// Start = remChar 'c' "hello" // "hello"
//Start = remChar 'a' "apple" // "pple"
// Start = remChar 'm' "midterm" // "idter"


arrToList :: {Int} -> [Int]
arrToList lst = [x \\ x <-: lst]

//-------------3------------
// Given an array of lists of integers and an integer, 
// keep the lists whose difference between max and min 
// element squared is greater than the given number
// There are no [] in the array.
	
cond :: [Int] Int -> Bool
cond list n = (a-b) ^ 2 > n
where a = maxList list
      b = minList list

minMaxDiff::{[Int]} Int->{[Int]}
minMaxDiff arr n = { x \\ x <-: arr | cond x n}


// Start = minMaxDiff {[1,21,2],[1,1,1,1,1],[1]} 5//{[1,21,2]}
// Start = minMaxDiff {[1,21],[1..10],[4,3]} 5//{[1,21],[1,2,3,4,5,6,7,8,9,10]}
// Start = minMaxDiff {[1..10],[5..6]} -3//{[1,2,3,4,5,6,7,8,9,10],[5,6]}





//-------------4------------
// Given array find max of it and return new array which has 
// all occurrences of maximum removed.


// E.g. {1,4,5,3,3,2,4,5,1,3,4} max is 5 -> {1,4,3,3,2,4,1,3,4}.

rem_max :: {Int} -> {Int}
rem_max arr = {x \\ x <-: arr | x <> maxList(arrToList arr)}

// Start = rem_max {1,4,5,3,3,2,4,5,1,3,4} //{1,4,3,3,2,4,1,3,4}
// Start = rem_max {1,42,42,52,452,4} // {1,42,42,52,4}
// Start = rem_max {5} // {}
//Start = rem_max {} // {}


//-------------5------------
// Given two arrays, return new array such that i-th element of it is 
// maximum of i-th element of first and second arrays.
// E.g. when we calculate 5th element of result array, we look at 
// 5th element of first and 5th element of second arrays, and choose maximum of the two.
// You can assume that arrays have same length. 

maxOfTwo :: {Int} {Int} -> {Int}
maxOfTwo arr1 arr2 = { max x y \\ x <-: arr1 &  y <-: arr2}

//Start = maxOfTwo {} {} // {}
// Start = maxOfTwo {1} {5} // {5}
// Start = maxOfTwo {1,5,4} {2,3,6} // {2,5,6}
// Start = maxOfTwo {1,2,3,4,5} {1,2,3,4,5} // {1,2,3,4,5}


//-------------6------------
// You are given array of integers.
// Your function should return true if each value appears at least twice 
// in the array, and it should return false
// if any element is distinct.

checker :: Int {Int} -> Int
checker n arr = size { x \\ x <-:arr | x == n}

Start :: Int {Int}
Start = checker 10 {1,2,2,2,1}

// f7 :: {Int} -> Bool
// f7 arr = {}

//Start = f {1,2,3,1,3,2,2,2} // True
//Start = f {1,2,3,4,3,2,1} // False
//Start = f {1,1,1,3,3,4,3,2,4,2} // True



//-------------7------------
// An array is monotonic if it is either monotone increasing or monotone decreasing
// A is monotone increasing if for all i<=j, A[i]<=A[j]
// A is monotone decreasing if for all i<=j, A[i]>=A[j]
// Given array, your task is to decide if it is monotonic.

//isMonotonic :: {Int} -> Bool

//Start = isMonotonic {6,5,4,4} // True
//Start = isMonotonic {1,3,2} // False
//Start = isMonotonic {1,2,4,5} // True
//Start = isMonotonic {1,1,1} // True


//-------------8------------
/* Given an integer array and the integer list, which is an index list. 
Return the list of integers, which are the values at the indecses 
of the given array. Indexing starts at 0.
E.g: {23,45,346,6,7,73,92} [0,2,3,4,6] => [23,346,6,7,92]
If the given index is invalid, then no need to include it.
{23,45,346,6,7,73,92} [6,-10,1,0,8] => [92,45,23]
Index -10 and 8 are ignored because they are out of bound. */

//subList :: {Int} [Int] -> [Int]

//Start = subList {23,45,346,6,7,73,92} [0,2,3,4,5] // [23,346,6,7,73]
//Start = subList {-23,0,90,76,354,7} [1,0,-5,8] // [0,-23]
//Start = subList {} [3,5,-6,2] // []
//Start = subList {4,3,6,7,8} [-1,-2] // []





