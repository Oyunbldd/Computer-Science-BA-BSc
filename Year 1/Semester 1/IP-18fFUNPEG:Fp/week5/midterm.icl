module midterm
import StdEnv



appendAux :: [Int] -> [Int]
appendAux ls = ls ++ [sum ls, length ls]


append :: [[Int]] -> [[Int]]
// append ls = map appendAux ls

append ls = map (\sublist = sublist ++ [sum sublist , length sublist]) ls


// Start = append [[1..5],[1..4]]



fractionAux :: Real -> Real 
fractionAux x 
| toReal(intVal) > x = x - toReal(intVal - 1) 
= x - toReal(intVal)

where  intVal = (toInt x)

// Start = fractionAux 9.69

fraction :: [Real] -> [Real]
fraction ls = map fractionAux ls

// Start= fraction [1.2,1.5,1.6,9.91919]







// takeWhile :: (a->Bool) [a] -> [a]
// takeWhile p [] = []
// takeWhile p [x : xs]
// | p x = [x : takeWhile p xs]
// | otherwise = []

// Start = takeWhile isEven [2,4,6,7,8,9] //[2,4,6]




countOcc :: Int [Int] -> Int
countOcc x ls = length [el \\ el <- ls | el == x]


// Start = countOcc 4 [4,4,4,1,4,4]


famousNum :: [Int] -> [Int]
famousNum ls = filter (\x = (countOcc x (ls)) >= 5 ) ls

// Start = famousNum [1,1,1,1,1,1,2,2,3,3,5,5,5,5,5]


findIdx :: Int [Int] -> Int
findIdx x ls = [ i \\ i <- ls & i <- [0..] | l == x ]


findPrev :: Int [Int] -> Int
findPrev x ls 
| isEmpty list = -1
= last list
where list = (takeWhile(\c = c <> x) ls)


