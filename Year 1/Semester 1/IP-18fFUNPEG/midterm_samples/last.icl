module last
import StdEnv

// Numerics, lists, list comprehension, tuples

/* Switcherr
 * Complete the function Switcher that takes two integer numbers, start and target.
 * The function Switcher returns the amount of digit switches that have to be made in the start number
 * such that the end product is equal to the target 
 * e.g: Switcher 12132 21123 -> 2                    
 * we had to switch 12 and 32 in the start number in order to get the target number
 * Note: it is guranteed that a number of switches in the start numbere will result in the target number 
*/


// Switcher :: Int Int -> Int 



// Start = Switcher 12132 21123 // 2
// Start = Switcher 99428123 98439122 // 2
// Start = Switcher 11112111 12111111 // 1



/*Empty parking lots
 * You are given an integer number representing the length of a parking lot, and a list of the occupied parking spots 
 * Count the number of the empty parking spots that fit for a truck, if a truck takes two consecutive empty parking spots to be able to park properly 
 * e.g: truckParker 10 [2,4,6,9,10] -> 1
 * The truck can only park between 6 and 9 at position 7
*/
// truckParker :: Int [Int] -> Int


//Start = truckParker 10 [2,4,6,9,10]   //  1
//Start = truckParker 100 [1,4..100] //  33
//Start = truckParker 2 [2] // 0
//Start = truckParker 2 [] // 1

/* Element conversions
 * Given a list of triple tuples, where the first element is a string number, the second is an operator and the third is another 
 * string number, calculate the value of each tuple as follows:
 * convert the two strings to their integer values, 
 * and then use the operator to find the value of the tuple
*/

// thirdHelper :: 

// tripCalc :: [(String, (Int Int -> Int), String)] -> [Int]


//Start = tripCalc [("100", +, "45"),("153", *, "445") ] // [145,68085]
//Start = tripCalc [("100", -, "45"),("153", /, "445") ] //  [55,0]
//Start = tripCalc [] //  []

/* Remvoe Digits
 * Given a tuple of an integer number, and a list of integer numbers
 * Remove the digits inside the list from the first part of the tuple
 * if a digit is in the list but isn't in the number, ignore it
 * if all of the digits are removed from the number, return 0
*/

numToList :: Int -> [Int]
numToList x 
| x < 10 = [x]
= numToList (x / 10) ++ [x rem 10]

// Start = numToList 1210

listToNum :: [Int] -> Int
listToNum [] = 0 
listToNum [x : xs] = x * 10 ^ (length xs) + listToNum xs


// digHelper :: [Int] [Int] -> [Int]
// digHelper lst dl = [x \\ x <-lst & y <-]
// digHelper [] _ = []
// digHelper _ [] = []
// digHelper [x : xs] [y : ys]
// | x == y = digHelper xs ys
// = 

// digRemover :: (Int,[Int]) -> Int

//Start = digRemover (15424, [1,2,4]) // 5
//Start = digRemover (10, [1,0]) // 0
//Start = digRemover (8542, [2]) // 854



/* Props
 * Given a list of lists of tuples containing integers.
 * Substitute each sublist with the number of tuples in that 
 * sublist with the property that the first element is greater or equal to the second one.
 * Example:
 * [[(1,2),(2,2),(3,2)],[],[(5,2),(3,4)]] -> [2,0,1]
 *[(1,2),(2,2),(3,2)] -> [2] 
 * [] -> 0
 * [(5,2),(3,4)] -> [1] 
*/

// Props :: [[(Int,Int)]] -> [Int]

//Start = Props [[(1,2), (2,2), (3,2)], [], [(5,2), (3,4)]] // [2,0,1]
//Start = Props [[(5,3), (2,1122), (3123,21)], [(1,-123), (0,0)], [(5,2), (3222,4)], [(5,2), (3,4)]] // [2,2,2,1]
//Start = Props [[(1,2), (2,2), (1,2)], [(2,2), (3,4)]] // [1,1]




/* Matcherr
 * 
 * Write a function that takes a list of lists
 * and a function. This function returns True if
 * the sum of each list and its position in the list of lists
 * have the same boolean result of the function
 
 * example: [[1,2,2], [1,5]] isEven
 * returns True because sum of [1,2,2] is 5 and its position
 * is 1 so isEven gives False for both of them, and for [1,4],
 * the list's sum is 6 and its position is 2 so isEven gives True for both of them
 * and we have a result of the list to be [(False == False), (True == True)]
 * the end return value is whether the entire list is full of True values
 * 
 * Note: position starts from 1 in this task.
*/

// matchIndex :: [[Int]] (Int -> Bool) -> Bool 



//Start = matchIndex [[6,2,1], [2,4]] isEven // True
//Start = matchIndex [[5,4,2]] isOdd // True
//Start = matchIndex [[6,2,1,3], [5,2,4]] isEven // False



/* Even conditions
 * Write a function which takes a list of lists
 * and returns the biggest even sum between all of the sums 
 * example: [[1,2,3],[],[10,1],[2,2]] -> 6 because the sum
 * of [1,2,3] is 6 and it is biggest even between the other sums
 * 0, 11 and 4
 
 * Note: sum of empty list is 0
 * Note: if there is no even sums, return -1
*/

// evenConds:: [[Int]] -> Int

//Start = evenConds [[3,3,3],[],[10,5,1],[15,2]] //16
//Start = evenConds [[1,1], [9,9], [100,1]] //18
//Start = evenConds [[90,3,6],[71,52,12,1],[53,25]] //136
//Start = evenConds [] //0



/*  Odd Prods
 * Write a function which takes a list of lists
 * returns the product of all the elements of
 * the palindrom lists
 * example: [[1,2,1], [4,5], [1,2,3,2,1]] -> 24
 * because the lists ([1,2,1] and [1,2,3,2,1]) are
 * palindroms so we multiply all of their elements together
 * Note: If there are no palindroms, return 1
*/

// prodPali :: [[a]] -> a | * a & one a & Eq a

//Start = prodPali [[1,2,1], [4,5], [1,2,3,2,1]] //24
//Start = prodPali [[1.0,11.0,2.0], [], [10.1,10.1]] // 102.01
//Start = prodPali [[1,3]] // 1


/* Bigger than average 
 * 
 * given a list of lists of integers and a number,
 * write a function which returns the lists where
 * whether the difference between the maximum
 * and the average is bigger than or equal to a given
 * number.
*/



// BTavg :: [[Int]] Int -> [[Int]]

//Start = BTavg [[1,2,4], [1,2]] 2 // [[1,2,4]]
//Start = BTavg [[1]] 1 // []
//Start = BTavg [[1..10], [20..30], [1..100]] 10 // [[1..100]]
