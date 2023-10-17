module ex3_solved
import StdEnv

// 1. Add the numbers from 1..N in a recursive function, where N is positive.
addn :: Int -> Int
addn n
| n <= 0 = abort " N can not be zero or negative"
| n == 1 = 1 
= n + addn (n-1)

//Start = addn 5
// 5 + addn 4
// 5 + 4 + addn 3
// 5 + 4 + 3 + addn 2
// 5 + 4 + 3 + 2 + addn 1 
// 5 + 4 + 3 + 2 + 1
// 15
//Start = addn -10 // N can not be zero or negative
//Start = addn 0 // N can not be zero or negative



// 2. Compute factorial n recursively, where n! = n*(n-1)! .
factor :: Int -> Int
factor n
| n == 0 = 1
| n > 0 = n * factor (n-1)

//Start = factor 5 // 120
// factor 5
// 5 * factor 4
// 5 * 4 * factor 3
// 5 * 4 * 3 * factor 2
// 5 * 4 * 3 * 2 * factor 1
// 5 * 4 * 3 * 2 * 1 * factor 0
// 5 * 4 * 3 * 2 * 1 * 1
// 120



// 3. Count the number of digits of a number.
countDigits :: Int -> Int
countDigits x 
| x < 10 = 1 
= 1 + (countDigits (x/10)) 

//Start = countDigits 456 // 3



// 4. Add the digits of a number e.g. for 123 is 6.
sumDigits :: Int -> Int
sumDigits x 
| x < 10 = x 
= x rem 10 + sumDigits (x/10) 

//Start = sumDigits 12345 // 15
// 5 + sumDigits 12345/10  =  5 + sumDigits 1234
// 5 + 4 + sumDigits 1234/10 =  5 + 4 + sumDigits 123
// 5 + 4 + 3 + sumDigits 123/10 =  5 + 4 + 3 + sumDigits 12 
// 5 + 4 + 3 + 2 + sumDigits 12/10 =  5 + 4 + 3 + 2 + sumDigits 1 
// 5 + 4 + 3 + 2 + 1
// 15

//Start = sumDigits 5 // 5
  `Start = sumDigits -54 // 9




// 5. Write a function that takes two arguments, say n and x, and computes their power,
// in 2 versions - with recursion and without recursion.
power :: Int Int -> Int
power x y = x^y 

//Start = power 2 5 // 32

powerrec  :: Int Int -> Int
powerrec x n
| n == 0 = 1
= x * powerrec x (n-1)

//Start = powerrec 2 0 // 1
//Start = powerrec 2 4 // 16
// powerrec 2 4
// 2 * powerrec 2 3
// 2 * 2 * powerrec 2 2
// 2 * 2 * 2 * powerrec 2 1
// 2 * 2 * 2 * 2 * powerrec 2 0 //SAY ABOUT LAZY EVALUATION AND WHICH LANGUAGE IS EAGER
// 2 * 2 * 2 * 2 * 1
// 16


// 6. sumsq n returns 1*1 + 2*2 + ... + n*n - with a pattern for 0
sumsq :: Int -> Int
sumsq 0 = 0
sumsq n = n*n + sumsq (n-1)

//Start = sumsq 3 // 14


// version 2. - without pattern for 0 // PATTERN MATCHING ARIS IS GADAXEDE AM TOPICS!
sums :: Int -> Int
sums n
| n == 0 = 0
= n*n + sums (n-1)

//Start = sums 3
  


// 7. Compute for a given positive n the sum of 2i*(2i+1), for i from 1 to n. E.g. for n=3 the sum is 68.
f :: Int -> Int
f 0 = 0
f n = 2*n*(2*n+1) + f (n-1)

//Start = f 3

// f 3
// 2*3*(2*3+1) + f 2
// 2*3*(2*3+1) + 2*2*(2*2+1) + f 1
// 2*3*(2*3+1) + 2*2*(2*2+1) + 2*1*(2*1+1) + f 0
// 2*3*(2*3+1) + 2*2*(2*2+1) + 2*1*(2*1+1) + 0
// 68



// 8. Compute the sum 1+ 2*2+ 3*3*3+ 4*4*4*4+ 5*5*5*5*5+ ...+n*n*n*...*n 
// where n is a positive number.
sumpowers :: Int -> Int
sumpowers 0 = 0
sumpowers n = n^n + sumpowers (n-1) 

//Start = sumpowers 3

// sumpowers 3
// 3^3 + sumpowers 2
// 3^3 + 2^2 + sumpowers 1
// 3^3 + 2^2 + 1^1 + sumpowers 0
// 3^3 + 2^2 + 1^1 + 0
// 27+4+1
// 32
//Start = sumpowers 5
//Start = sumpowers 0



// 9. write a funtion which returns true if a is divisible by b
div_by :: Int Int -> Bool
div_by a b = a rem b == 0

//Start = div_by 16 4      // True



// 10. write a funtion which returns true if a is divisible by b or vice versa
div_any :: Int Int -> Bool
div_any a b = div_by a b || div_by b a

//a rem b == 0 || b rem a == 0

//Start = div_any 4 16     // True



// 11. Cut a list in two parts at the middle. 
// E.g. cut [1..10] -> [[1,2,3,4,5],[6,7,8,9,10]]
// and for cut [1..11] the result is [[1,2,3,4,5],[6,7,8,9,10,11]].
cut :: [Int] -> [[Int]]
cut x = [ take y x , drop y x ]
where y = (length x) / 2

//Start = cut [1..10]
//Start = cut [1..11]
//Start = cut []
//Start = cut [1]



// 12. Test if a list is symmetrical
sim :: [Int] -> Bool
sim x = reverse x == x

//Start = sim [1, 2, 1]
//Start = sim [1, 2, 3,4,5]



// 13. Extract the middle element of a non-empty list. E.g. for [1..5] is 3, for [1..4] is 3.
middle :: [Int] -> Int
middle [] = abort "your list is empty"
middle x = x !! ((length x)/2)

//Start = middle [1..5] 
//Start = middle [1..4] 
//Start = middle [1]
//Start = middle []



// 14. add 3 to every element of a list
f1 :: [Int] -> [Int]
f1 [] = []
f1 [x:xs] = [ x+3 : f1 xs]

//Start = f1 [1,5,3,1,6]  // [4,8,6,4,9]  



// 15. compute the double of the positive elements of a list [1, 2, -2, 3, -4] -> [2, 4, 6]
f2 :: [Int] -> [Int]
f2 [] = []
f2 [x:xs]
| x > 0 = [2*x : f2 xs]
= f2 xs

//Start = f2 [1, 2, -2, 3, -4] // [2, 4, 6]



// 16. write a function that keeps the integers of a list up to the first 0 encounterred 
// and then divides by 2 every element [1, 2, -2, 3, 0, -4] -> [0, 1, -1, 1]
// hints: use takeWhile then map
f3 :: [Int] -> [Int]
f3 [] = []
f3 [x:xs]
| x == 0 = []
= [ (x/2) : f3 xs]

//Start = f3 [1, 2, -2, 3, 0, -4] // [0, 1, -1, 1]



// 17. write a function for the square of every element of a list and sublists
// [[1,2],[3,4,5,6],[7,8]]  -> [[1,4],[9,16,25,36],[49,64]]  
// hint: map in map
sq :: [Int] -> [Int]
sq [] = []
sq [x:xs] = [x*x : sq xs]

//Start = sq [1..5]

f4 :: [[Int]] -> [[Int]]
f4 [] = []
f4 [x:xs] = [ sq x : f4 xs ]

//Start = f4 [[1,2],[3,4,5,6],[7,8]] // [[1,4],[9,16,25,36],[49,64]]



// 18. Replicate n>0 times the element of a list e.g. n=3 [3..6] ->
// [[3,3,3],[4,4,4],[5,5,5],[6,6,6]]
faux :: Int Int -> [Int]
faux 0 x = []
faux n x = [ x : faux (n-1) x]

//Start = faux 3 4

f5 :: Int [Int] -> [[Int]]
f5 n [] = []
f5 n [x: xs] = [ faux n x : f5 n xs]

//Start = f5 3 [3..6]



// 19. Compute the product of the elements of a list
product :: [Int] -> Int
product [] =  1
product [x:xs] = x * product xs

//Start = product [1..5] // 120



// 20. delete the elements equal to 5
not_five :: [Int] -> [Int]
not_five [] = []
not_five [x:xs] 
| x == 5 = not_five xs
= [x: not_five xs]

//Start = not_five [5,4,5,4,3]  // [4,4,3]

not_five2 :: [Int] -> [Int]
not_five2 [] = []
not_five2 [5:xs] = not_five2 xs
not_five2 [x:xs] = [ x : not_five2 xs] 

//Start = not_five2 [5,4,5,4,3]  // [4,4,3]

// not_five2 [5,4,5,4,3]
//            x  xs
// not_five2 [4,5,4,3]
// [4 : not_five2 [5,4,3]]
// [4 : not_five2 [4,3]]
// [4 : [ 4: not_five2 [3]]
// [4 : [ 4: [3 : not_five2 []]]
// [4 : [ 4: [3 :  []]]
// [4,4,3]



// 21. Delete an element n from a list
del :: Int [Int] -> [Int]
del n [] = []
del n [x:xs]
| n==x = del n xs
= [x: del n xs]

//Start = del 5 [1, 5, 6, 7, 5, 8, 5] // [1, 6, 7, 8]



// 22. Keep the first 2 and the last 2 elements of a list
droptake2 :: [Int] -> [Int]
droptake2 x 
| length x > 3  = (take 2 x) ++ (drop ((length x)-2) x)
= []

//Start = droptake2 [1, 2, 3, 4, 5, 6, 7, 8, 9]
//Start = droptake2 [1, 2]



// 23. Delete the first and the last element of a list.
del_firstlast :: [Int] -> [Int]
del_firstlast x
| (length x) > 1 = take ((length y)-1) y
= []
where y = drop 1 x

//Start = del_firstlast [1..10]

del_firstlast2 :: [Int] -> [Int]
del_firstlast2 x
| (length x) > 1 =  init (tl x)
= []

//Start = del_firstlast2 [1..10]
//Start = del_firstlast2 []
//Start = del_firstlast2 [1]



// 24. Rewrite flatten with ++
//Start = flatten [[1, 2, 3], [3, 4], [5, 7, 8, 9]]

lc :: [[Int]] -> [Int]
lc [] = []
lc [x:xs] = x ++ lc xs

//Start = lc [[1, 2, 3], [3, 4], [5, 7, 8, 9]]
// lc [[1, 2, 3], [3, 4], [5, 7, 8, 9]]
//      x         xs
// [1, 2, 3] ++ lc [[3, 4], [5, 7, 8, 9]]
// [1, 2, 3] ++ [3, 4] ++ lc [[5, 7, 8, 9]]
// [1, 2, 3] ++ [3, 4] ++ [5, 7, 8, 9] ++ lc [] 
// [1, 2, 3] ++ [3, 4] ++ [5, 7, 8, 9] ++ [] 
// [1, 2, 3, 3, 4, 5, 7, 8, 9]




// 25. Operations with lists: write functions for the followings
// keep the head of every sublist e.g. [[1, 2, 3], [3, 4], [5, 7, 8, 9]] -> [1, 3, 5]
heads :: [[Int]] -> [Int]
heads [] = []
heads [x:xs] = [hd x : heads xs]

//Start = heads [[1, 2, 3], [3, 4], [5, 7, 8, 9]]

//heads [[1, 2, 3], [3, 4], [5, 7, 8, 9]]
//         x          xs
// [1 : heads [[3, 4], [5, 7, 8, 9]]]
// [1 : [3 : heads [[5, 7, 8, 9]]]]
// [1 : [3 : [5 : heads []]]]
// [1 : [3 : [5 : []]]]
// [1,3,5]





// 26. Keep the tails of a list in 2 versions 
// e.g. [[1, 2, 3], [3, 4], [5, 7, 8, 9]] -> [[2, 3], [4], [7, 8, 9]] 
tails :: [[Int]] -> [[Int]]
tails [] = []
tails [x:xs] = [ tl x : tails xs]

//Start = tails [[1, 2, 3], [3, 4], [5, 7, 8, 9]]

tailsd :: [[Int]] -> [[Int]]
tailsd [] = []
tailsd [x:xs] = [(drop 1 x) : tailsd xs]

//Start = tailsd [[1, 2, 3], [3, 4], [5, 7, 8, 9]]



// 27. Reverse every sublist of a list 
revsub :: [[Int]] ->  [[Int]]
revsub [] = []
revsub [x:xs] = [reverse x : revsub xs]

//Start = revsub [[1,2,3],[5,6],[],[7,8,9,10]]



// 28. Keep the last elements of the sublists of a list in one list (the sublists are not empty).
// [[1,2,3],[5,6],[1],[7,8,9,10]] -> [3,6,1,10]
lasts :: [[Int]] -> [Int]
lasts [] = []
lasts [x:xs] = [last x : lasts xs ]

//Start = lasts [[1,2,3],[5,6],[1],[7,8,9,10]]



// 29. Insert 0 in front of every sublist of a list.
// E.g. for [[1,2,3],[5,6],[],[7,8,9,10]] the result is [[0,1,2,3],[0,5,6],[0],[0,7,8,9,10]]
ins0 :: [[Int]] -> [[Int]]
ins0 [] = []
ins0 [x:xs] = [ [0]++x : ins0 xs]

//Start = ins0 [[1,2,3],[5,6],[],[7,8,9,10]]

ins02 :: [[Int]] -> [[Int]]
ins02 [] = []
ins02 [x:xs] = [ [0:x] : ins02 xs]

//Start = ins02 [[1,2,3],[5,6],[],[7,8,9,10]]



// 30. Delete the last element of each sublist of a list.
// E.g. for [[1,2,3],[5,6],[],[7,8,9,10]] the result is [[1,2],[5],[],[7,8,9]]
lastdel :: [[Int]] -> [[Int]]
lastdel [] = []
lastdel [x:xs] = [init x : lastdel xs]

//Start = lastdel [[1,2,3],[5,6],[],[7,8,9,10]]



// 31. write a funtion with the patterns depending on the parameter:
// if the param is [] then is equal to 20, if is a two element list starting with 4 then is 30
// if is a two element list ending with 5 then is 40, in all other cases is 50, 
// the order of the patterns is important
gp :: [Int] -> Int
gp [] = 20
gp [4 ,_ ] = 30
gp [ _, 5] = 40
gp _ = 50

//Start = gp [4, 6] // 30
//Start = gp [4, 5] // 30
//Start = gp [1..10]



// 32. check if a number is palindrom e.g.12321
p :: Int -> [Int]
p n = digits n []

digits :: Int [Int] -> [Int]
digits 0 x = x
digits n x = digits (n/10) [n rem 10 : x]

//Start = digits 12321 []
// digits 12321 []
// digits 1232 [1:[]]
// digits 123 [2:[1:[]]]
// digits 12 [3:[2:[1:[]]]]
// digits 1  [2:[3:[2:[1:[]]]]]
// digits 0  [1:[2:[3:[2:[1:[]]]]]]
// digits 0 [1,2,3,2,1]
// [1,2,3,2,1]

pali :: Int -> Bool
pali x = y == reverse y
where y = p x

//Start = pali 12321 // True
//Start = pali 12345



// 33. filter the elements smaller then n, e.g. n=3 [1,5,3,2,1,6,4,3,2,1] -> [1,2,1,2,1]
f7 :: Int [Int] -> [Int]
f7 n [] = []
f7 n [x:xs]
| x < n = [x: f7 n xs]
= f7 n xs

//Start = f7 3 [1,5,3,2,1,6,4,3,2,1] 



// 34. using notempty eliminate the empty lists: 
// [[1,2,3],[],[3,4,5],[2,2],[],[],[]] -> [[1,2,3], [3,4,5], [2,2]]

notempty :: [Int] -> Bool
notempty x = not (x == [])

f8 :: [[Int]] -> [[Int]]
f8 [] = []
f8 [x:xs] 
| notempty x = [x: f8 xs]
= f8 xs

Start = f8 [[1,2,3],[],[3,4,5],[2,2],[],[],[]] 

