module HW3
import StdEnv

//REMEMBER: PLAGIARISM IS ZERO!

//Please write your NAME AND NEPTUN code here: Oyunbold | DDJIJZ


/*
EXERCISE 1:

You are given one list of integers and one integer. You have to implement three operations:
 
1)Search - should give index of that element if it is in the list, if it is not in given list return -1
 
2)Erase - should erase that element from the list and give the index of deleted element if operation was successful, 
if it was not successful (for example that number was not in the list) it should return -1

3)Add - should add element to a sorted list so that the list will remain sorted after it, if the
insertion was successful return at what index was it inserted, if not return -1. Add operation won't be successful
if the element was already in the list. YOU CAN'T USE BUILTIN FUNCTION SORT !

Remember that given list is sorted and it should remain sorted !

*/

//Operation is given as a string:

findingIndex :: [Int] Int -> Int
findingIndex [] n = 0
findingIndex [x : xs] n
| x == n = index
= (index+1) + findingIndex xs n

where index = 0;

search :: [Int] Int -> Int
search ls n 
| isMember n ls = findingIndex ls n
= -1



addingRightPosition :: [Int] Int -> [Int]
addingRightPosition [] n = []
addingRightPosition ls n = (takeWhile (\c = c < n) ls) ++ [n] ++ (dropWhile (\c = c<n) ls)

// Start = addingRightPosition [1,2,3,7,8,9] 10

add :: [Int] Int -> Int
add ls n 
| isMember n ls = -1
= findingIndex(addingRightPosition ls n) n



erasingItem :: [Int] Int -> [Int]
erasingItem [] n = []
erasingItem ls n =filter (\x = x <> n)ls


// Start = erasingItem [1..10] 5

erase :: [Int] Int -> Int
erase ls n 
| isMember n ls == False = -1
= findingIndex ls n

operations :: String [Int] Int -> Int
operations "search" list x = search list x
operations "add" list x = add list x
operations "erase" list x = erase list x


// Start = operations "search" [10, 20, 40, 50, 80] 80 //4 --> index of 80 is 4
// Start = operations "search" [10, 20, 40, 50, 80] 25//-1 --> 25 is not in the list
// Start = operations "add" [10, 20, 40, 50, 80] 80//-1 --> 80 was already in list, so operation was unsuccessful
// Start = operations "add" [10, 20, 40, 50, 80] 25//2 --> new list: [10,20,25,40,50,80] --> index of 25 is 2
// Start = operations "add" [10, 20, 40, 50, 80] -100//0 --> -100 was inserted as first element 
// Start = operations "erase" [10, 20, 40, 50, 80] 80//4 --> index of 80 was 4, it was deleted successfully
// Start = operations "erase" [10, 20, 40, 50, 80] 25//-1 --> couldn't delete 25 cause it is not element of the list





/*
EXERCISE 2:
You are given a list of integers as an input. Remove those numbers from the list, that has the frequency 3.

Example:
In this list [1,1,1,2,2,3,3,3,4,4,4,4,5,5,5,6,7,7,7,7,7,7,7] 1,3 and 5 have frequency three, so they should be
removed from list. Output: [2,2,4,4,4,4,6,7,7,7,7,7,7,7]

*/





counting :: [Int] Int -> [Int]
counting [] n = []
counting ls n = filter(\c = c == n) ls

// Start = length(counting [11,11,22,22,5,22] 5)

deleteItems :: [Int] Int -> [Int]
deleteItems [] n = []
deleteItems ls n = filter(\c = c <> n) ls

// Start = deleteItems [1,1,1,1,2,3,4,5] 1


removeIfThree :: [Int] -> [Int]
removeIfThree [] = []
removeIfThree [x : xs]
| length (counting xs x) == 2 = removeIfThree(deleteItems xs x)
= counting ([x]++xs) x ++ removeIfThree (deleteItems xs x)




// Start = removeIfThree [11,11,22,22,5,22,33,5,33,5,33,33]//[11,11,33,33,33,33]
// Start = removeIfThree [11,11,22,22,5,22,5,33] // [11,11,5,5,33]  
// Start = removeIfThree [1,1,1,2,2,3,3,3,4,4,4,4,5,5,5,6,7,7,7,7,7,7,7]//[2,2,4,4,4,4,6,7,7,7,7,7,7,7]
// Start = removeIfThree []//[]
// Start = removeIfThree [11,11,22,22,22,33,33,33,33]//[11,11,33,33,33,33]




