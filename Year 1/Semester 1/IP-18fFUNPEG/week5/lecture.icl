module lecture 
import StdEnv

// Start = Insert 5 [1,4,1,3]

//It's not working case we needed sorted list

Insert :: a [a] -> [a] | Ord a
Insert e [] = [e]
Insert e [ x : xs]
| e <= x = [e : Insert x xs]
| otherwise = [ x : Insert e xs]


// Start = Insert 5 [ 1,2,3,4,100]

// Insert :: Int [ Int ] -> [Int]
// Insert  n [] = [ n ]
// Insert  n [ x : xs ]
// | n <= x = [n : Insert x xs]
// | otherwise = [x : Insert n xs ] 

// Start = Insert 5 [ 1,2,3,4]

mysort :: [a] -> [a] | Ord a
mysort [] = []
mysort [ a : x] = Insert a (mysort x )

// Start = mysort [3,1,4,2,0] // [0,1,2,3,4]


//Merge function only correct works in 2 sorted lists!!
// Start = merge [2,5,6,100] [1,5,6,8]
// Start = merge [] [1,2,3]
// Start = merge [1,2] [1,4]
// Start = merge [2,1] [ 4,1] // [2,1,4,1]
//If 2 list not sorted this function works like [] ++ []




msort :: [a] -> [a] | Ord a
msort xs 
| len <= 1 = xs 
| otherwise = merge (msort ys) (msort zs)
where 
  ys = take half xs 
  zs = drop half xs 
  half = len /2 
  len = length xs 

//  Start = msort [2,9,5,1,3,8] //[1,2,3,5,8,9]


//quick sort 
qsort :: [b] -> [b] | Ord b
qsort [] = []
qsort [a : xs] = qsort [x \\ x <- xs | x <a] ++ [a] ++ qsort [x \\x <-xs | x >=a]

// Start = qsort [2,1,5,3,6,9,0,1]

//Prime Numbers

divisible :: Int Int  -> Bool 
divisible x n = x rem n == 0 

denominators :: Int -> [Int]
denominators x = filter (divisible x )[1..x]

prime :: Int -> Bool 
prime x = denominators x == [1,x]

primes :: Int -> [Int]
primes x = filter prime [1..x]
// Start = primes 100 

//Sieve 

sieve :: [Int] -> [Int] 
sieve [p : xs] = [p: sieve [i\\ i<-xs | i rem p <> 0]]

// Start= take 100 (sieve[2..])

// exists :: Int [ Int ] -> Bool 
// exists x [] = False 
// exists x [y : ys ]
// | x == y = True 
// = exists x ys

// exists :: Int [ Int] -> Bool
// exists x [] = False
// exists x [ y : ys] = x == y || exists x ys 

//We using this function checking element at least one time which  given list


// Start = exists 3 [1,2,1,1,2,3,2,1,3]
// ismember = exists  same function 



