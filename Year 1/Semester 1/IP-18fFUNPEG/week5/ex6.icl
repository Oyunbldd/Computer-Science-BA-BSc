module ex6

import StdEnv


// Earlier exemples rewritten with higher order functions: map, foldr, filter, takeWhile. 
// Operations with lists: write functions for the followings


// Keep the head of every sublist (assume sublists are not empty).
// e.g. [[1, 2, 3], [3, 4], [5, 7, 8, 9]] -> [1, 3, 5]
heads :: [[Int]] -> [Int]
heads x = map hd x

// Start = heads [[1, 2, 3], [3, 4], [5, 7, 8, 9]] // [1,3,5]



// 2. Keep the tails of a list.
// e.g. [[1, 2, 3], [3, 4], [5, 7, 8, 9]] -> [[2, 3], [4], [7, 8, 9]] 
//tails :: [[Int]] -> [[Int]]

//Start = tails [[1, 2, 3], [3, 4], [5, 7, 8, 9]] // [[2, 3], [4], [7, 8, 9]] 



// 3. Add 100 to the numbers of a list.
g :: Int -> Int
g x = x + 100


add100 :: [Int] -> [Int]
add100 x = map g x


add1002 :: [Int] -> [Int]
add1002 x = map ((+)100) x

// Start = add100 [1..8] // [101,102,103,104,105,106,107,108]
// Start = add1002 [1..8] // [101,102,103,104,105,106,107,108]



// 4. Triple the elements of a list.
triples :: [Int] -> [Int]
triples x = map((*)3) x

// Start = triples [1..5] // [3,6,9,12,15]

triples2 :: [Int] -> [Int]
triples2 x = map(\l=l*3) x

// Start = triples2 [1..5] // [3,6,9,12,15]



// 5. Check if the numbers of a list are odd.
//isoddnrs :: [Int] -> [Bool]

isoddnrs2 :: [Int] -> [Bool]
isoddnrs2 x = map (\x = x rem 2 == 1) x

//Start = isoddnrs [1..5] // [True,False,True,False,True]



// 6. Check if the numbers of a list are multiple of 10.
ismult10 :: [Int] -> [Bool]
ismult10 x = map (\x = x rem 10 == 0) x

//Start = ismult10 [1..20]
// [False,False,False,False,False,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True]



// 7. Collect in a list the last digits of the numbers of a list.
lastdigits :: [Int] -> [Int]
lastdigits lst = map (\x = x rem 10) lst

// Start = lastdigits [1..35]
// [1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5]



// 8. Compute the cube of the numbers of a list.
cubes :: [Int] -> [Int]
// cubes lst = map ((^)3) lst // error  3 ^ x -> but we need x ^ 3 -> we cannot use this things
cubes lst = map(\x = x ^ 3) lst

// Start = cubes [1..10] // [1,8,27,64,125,216,343,512,729,1000]
//Start = cubes [] // []

//cubes2 :: [Int] -> [Int]

//Start = cubes2 [1..10] // [1,8,27,64,125,216,343,512,729,1000]



// do not confuse with powers of 3 !!!
powersof3 :: [Int] -> [Int]
powersof3 x = map (\x = 3^x) x

//Start = powersof3 [1..5] // [3,9,27,81,243]

powersof32 :: [Int] -> [Int]
powersof32 x = map ((^)3) x

//Start = powersof32 [1..5] // [3,9,27,81,243]



// 9. Reverse every sublist of a list.
revsub :: [[Int]] ->  [[Int]]
revsub x = map reverse x

// Start = revsub [[1,2,3],[5,6],[],[7,8,9,10]] // [[3,2,1],[6,5],[],[10,9,8,7]]



// 10. Keep the last elements of the sublists of a list in one list 
// (assume the sublists are not empty).
// E.g. [[1,2,3],[5,6],[1],[7,8,9,10]] -> [3,6,1,10]
//lasts :: [[Int]] -> [Int]

//Start = lasts [[1,2,3],[5,6],[1],[7,8,9,10]] // [3,6,1,10]



// 11. Delete the last element of each sublist of a list.
// E.g. for [[1,2,3],[5,6],[],[7,8,9,10]] -> [[1,2],[5],[],[7,8,9]]
//lastdel :: [[Int]] -> [[Int]]

//Start = lastdel [[1,2,3],[5,6],[],[7,8,9,10]] // [[1,2],[5],[],[7,8,9]]



// 12. Instert 0 in front of every sublist of a list.
// E.g. for [[1,2,3],[5,6],[],[7,8,9,10]] the result is 
// [[0,1,2,3],[0,5,6],[0],[0,7,8,9,10]]
ins0 :: [[Int]] -> [[Int]]
ins0 x = map ((++) [0]) x   // (\ x = x ++ [0])

//Start = ins0 [[1,2,3],[5,6],[],[7,8,9,10]] // [[0,1,2,3],[0,5,6],[0],[0,7,8,9,10]]



// 13. Compute the squares of the elements of a list using map.
// [1, 2, 3] -> [1, 4, 9]
sq :: Int -> Int
sq x = x*x

//sqrs :: [Int] -> [Int]

//Start = sqrs [1, 2, 3] // [1,4,9]



// 14. Same as 13. with lambda expression.
//sqrs_lambda :: [Int] -> [Int]

//Start = sqrs_lambda [1, 2, 3] // [1,4,9]




///// review foldr
//Start = foldr (+) 1 [4,5,6]  //(4 + (5 + (6 + 1))) 16


// 15.  Add the numbers from 1..N (N positive and not 0) using foldr.
addn :: Int -> Int
addn n = foldr (+) 0 [1..n]

//Start = addn 5 // 15
//Start = addn 0 // 0
//Start = addn -2  // 0
//Start = addn 10



// 16. Compute the product of the elements of a list using foldr.
prodf :: [Int] -> Int
prodf x = foldr (*) 1 x

prodf2 :: [Int] -> Int
prodf2 x = prod x

//Start = prodf [1,5,2,4] // 40



// 17. Compute 1*1 + 2*2 + ... + n*n  for n positive using map and foldr.
//sumsqr :: Int -> Int

//Start = sumsqr 5 // 55
//Start = sumsqr 0 // 0
//Start = sumsqr -4 // 0



// 18. Write a function for the square of every element of a list and sublists.
// [[1,2],[3,4,5,6],[7,8]]  ->  [[1,4],[9,16,25,36],[49,64]]  
// hint: map in map
fa :: [Int]-> [Int]
fa x = map (\x = x*x) x

//Start = fa [1..5]

//f4 :: [[Int]] -> [[Int]]

f42 :: [[Int]] -> [[Int]]
f42 x = map (map (\x = x*x)) x

//Start = f42 [[1,2],[3,4,5,6],[7,8]] // [[1,4],[9,16,25,36],[49,64]]



// 19. Replicate n>0 times the element of a list e.g. n=3 [3..6] ->
// [[3,3,3],[4,4,4],[5,5,5],[6,6,6]]
rep :: Int Int -> [Int]
rep 0 x = []
rep n x = [x : rep (n-1) x]

//Start = rep 3 7

//f5 :: Int [Int] -> [[Int]]

//f5 n x = map (rep n) x   // partial parameterization !!!

//Start = f5 3 [3..6] // [[3,3,3],[4,4,4],[5,5,5],[6,6,6]]



// 20. Compute the double of the positive elements of a list [1, 2, -2, 3, -4] -> [2, 4, 6]
// hints: first filter it then use map 
//f2 :: [Int] -> [Int]

//Start = f2 [1, 2, -2, 3, -4] // [2, 4, 6]




///// review filter, taWhile
// 21. Filter the elements smaller then n, e.g. n=3 [1,5,3,2,1,6,4,3,2,1] -> [1,2,1,2,1]
f7 :: Int [Int] -> [Int]
f7 n x = filter ((>) n) x  // n > x

//Start = f7 3 [1,5,3,2,1,6,4,3,2,1]  // [1,2,1,2,1]



// 22. Using notempty, eliminate the empty lists from a list of lists. 
// [[1,2,3],[],[3,4,5],[2,2],[],[],[]] -> [[1,2,3], [3,4,5], [2,2]]

notempty :: [Int] -> Bool
notempty x = not (x == [])

//f8 :: [[Int]] -> [[Int]]

//Start = f8 [[1,2,3],[],[3,4,5],[2,2],[],[],[]] // [[1,2,3],[3,4,5],[2,2]]



// 23. Compute the sum of the sublists using foldr [[1,2,3], [3,4,5], [2,2]] -> [6, 12, 4]
//f9 :: [[Int]] -> [Int]

//f9 x = map (foldr (+) 0) x  // partial parameterization !!!
//f9 x = map sum x

//Start = f9 [[1,2,3], [3,4,5], [2,2]]




// 24. Write a function that keeps the integers of a list up to the first 0 encounterred 
// and then divides by 2 every element [1, 2, -2, 3, 0, -4] -> [0, 1, -1, 1]
// hints: use takeWhile then map
//f3 :: [Int] -> [Int]

//Start = f3 [1, 2, -2, 3, 0, -4] // [0, 1, -1, 1]



// 25. Insert the sum of elements of the sublist as last element in every sublist of a list.
insLast :: [Int] -> [Int] 
insLast list = list ++ [sum list] 

insSum :: [[Int]] -> [[Int]]
insSum lists = map insLast lists

insSum2 :: [[Int]] -> [[Int]]
insSum2 lists = map (\x = x ++ [sum x]) lists

//Start = insSum [[1,2], [3,4,5], [6,5,9,7], [], [8]] // [[1,2,3],[3,4,5,12],[6,5,9,7,27],[0],[8,8]]



// 26. Write a function that checks if each elements in the list appear even times.
// E.g. checkEven [1,1,2,2,2,2,3,5,3,5] = True  
checkAux :: [Int] Int -> Bool
checkAux list number = isEven (length (filter ((==) number) list)) 

checkEven :: [Int] -> Bool
checkEven list = and (map (checkAux list) list)

//Start = checkEven [1,1,2,2,2,2,3,5,3,5] // True
//Start = checkEven [1,1,2,2,1] // False
//Start = checkEven [] // True



// 27. Insert x as second element in every sublist of a list.
// if the sublist was empty then x will be the only element in the new sublist. 
// [[1,2], [3,4,5], [6,5,9,7], [], [8]] 10 -> [[1,10,2], [3,10,4,5], [6,10,5,9,7], [10], [8,10]]
insAux :: Int [Int]  -> [Int]
insAux e [] = [e]
insAux e [x:xs] = [x,e:xs]

insertAtTwo :: [[Int]] Int -> [[Int]]
insertAtTwo lists number = map (insAux number) lists

insertAtTwo2 :: [[Int]] Int -> [[Int]]
insertAtTwo2 lists number = map (insertAt 1 number) lists  

//Start = insertAtTwo2 [[1,2], [3,4,5], [6,5,9,7], [], [8]] 10 
// [[1,10,2],[3,10,4,5],[6,10,5,9,7],[10],[8,10]]



//// review tuple
// 29. Compute the average of tuple elements using map.
favg :: (Int, Int) -> Real
favg (x,y) = toReal (x + y) / 2.0

//averages ::  [(Int, Int)] -> [Real]

//Start = averages [(1,11), (2,7), (3,10)]



// 30. Create using an input list of tuples a new list of tuples like:
// [(1,1), (2,6), (3,9)] -> [(1,1,2), (2,6,8), (3,9,12)] 
fc :: (Int, Int) -> (Int, Int, Int)
fc (x,y)= (x,y,x + y)

//create :: [(Int, Int)] -> [(Int, Int, Int)]

//Start =  create [(1,1), (2,6), (3,9)]


create2 :: [(Int, Int)] -> [(Int, Int, Int)]
create2 x = map (\ x = (fst x, snd x, fst x + snd x)) x

Start =  create2 [(1,1), (2,6), (3,9), (4,5), (7,8)]


create3 :: [(Int, Int)] -> [(Int, Int, Int)]
create3 x = map (\(a,b)= (a,b,a+b)) x

//Start =  create3 [(1,1), (2,6), (3,9), (4,5), (7,8)]



// 30. Given a list of lists, for each list, extract the first, middle and last element.
//extract3 :: [[Int]] -> [(Int, Int, Int)]

//Start = extract3 [[1..9], [2..6], [3..11], [1..10]] // [(1,5,9),(2,4,6),(3,7,11),(1,6,10)]
//Start = extract3 [] //[]




//// bonus points
// 31. (bonus point) rewrite map using foldr
//mymap :: (a -> b) [a] -> [b]

// Start = mymap inc [1..10]

 
  
// 30. (bonus point) Compute the average of a list of float point numbers using the foldr function
// in one line code using one lambda function.
//avg :: [Real] -> Real

//Start = avg [16.2, 17.8, 11.5] // 15.1666666666667
//Start = avg [13.0, 40.9] // 26.95



// 31. (bonus point) Write a function that takes a list of numbers and adds the first element,
// subtracts the second element, adds the third element, subtracts the fourth element, so on, 
// in this alternating repetition.
// For example: [2,3,4,5,6,7] -> 2-3+4-5+6-7 = -3

//alternatingSum :: [Int] -> Int

//Start = alternatingSum [2..7] //-3
//Start = alternatingSum [45,-5,63,46,-345,4321] //-4599
//Start = alternatingSum [] //0