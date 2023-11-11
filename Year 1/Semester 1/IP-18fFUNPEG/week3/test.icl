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
// Start = checker [2,5,14,3,14,17,16] // [2,3,14,16]
// Start = checker [66,78,119,99,123,88,55] // [55]

// Start = filter ((>)4) [1,2,3,4]
// Start = filter (\x = x rem 2 == 0) [1,2,3,4]

// Start = takeWhile (\x = x rem 2 <> 0 ) [1,2,3,4]
// Start = dropWhile (\x = x rem 2 <> 0 ) [1,2,3,4]

// Start = take 2 [1,2]
// Start = drop 2 [1,2]

// Start = foldr (/) 2 [2,2,4]

// 2 / (2/ (3 / 2))

// Start = takeWhile ((<)5) [100,12,7,4,5]
// Start = foldr (++) [] [[4]]

// Start = dropWhile (\x = x > 10) [122,2,3,4,5]
// Start = dropWhile (\x = x < 10) [1,2,3]



// Start = takeWhile (\x = x > 10) [1,2,3,4,5]
// Start = takeWhile (\x = x < 10) [1,2,3,4,5]


// Start = unzip [(1,2),(11,22)]