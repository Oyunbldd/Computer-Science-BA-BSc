module  test
import StdEnv



test :: Int [Int] -> Bool
test n [] = True
test n [x : xs]
| n <= x = test n xs
= False


// Start = test 1 [21,4,7,5]
// Start = test 21 [4,7,5]
// Start = test 5 [14,3,14,17,16]
// Start = test  5 [10,100,200,2]


checker :: [Int] -> [Int]
checker [] = []
checker [x : xs]
| (test x xs) == True = [x : checker xs]
= checker xs


// Start = checker [1,21,4,7,5] // [1,4,5]
Start = checker [2,5,14,3,14,17,16] // [2,3,14,16]
// Start = checker [66,78,119,99,123,88,55] // [55]