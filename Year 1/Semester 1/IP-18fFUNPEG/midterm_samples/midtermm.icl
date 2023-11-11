module midtermm
import StdEnv

// Please fill the data required below.
//<Name>
//<Neptun_code>
//Functional Programming & mid-term-retake
//2021.September.14 
//This solution was submitted and prepared by <Name, Neptun_code> for the mid-term assignment of the Functional Programming course.
//I declare that this4265984027411626 solution is my own work.
//I have not copied or used third party solutions.
//I have not passed my solution to my classmates, neither  made it public.
//Studentsï¿½ regulation of Eï¿½tvï¿½s Lorï¿½nd University (ELTE Regulations Vol. II. 74/C.) 
//states that as long as a student presents another studentï¿½s work - 
//or at least the significant part of it - as his/her own performance, it will count as a disciplinary fault. 
//The most serious consequence of a disciplinary fault can be dismissal of the student from the University.



/*1. List ends
 Given a list of lists, append to the end of every sublist 
 the sum and the length of the sublist
*/

append :: [[Int]] -> [[Int]]
append ls = map (\sublist = sublist ++ [sum sublist, length sublist]) ls

//Start = append [[1..5],[1..4],[],[5,6]]  // [[1,2,3,4,5,15,5],[1,2,3,4,10,4],[0,0],[5,6,11,2]]
//Start = append [[(-1),(-2)..(-10)],[12],[5]]  // [[-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-55,10],[12,12,1],[5,5,1]]
//Start = append []  // []

/* 2. Fractions
 Given a list of real numbers, keep only the fraction part of the number
*/
fractionAux :: Real -> Real 
fractionAux x 
| toReal (toInt x) > x = x - toReal (toInt x - 1)
= x -  toReal (toInt x) 

fraction :: [Real] -> [Real]
fraction ls = map fractionAux ls 

// Start = fraction [1.2,1.5,0.6] //[0.2,0.5,0.6]
// Start = fraction [1.25, 8.2115548896, 53.21,45.58,0.005] //[0.25,0.2115548896,0.21,0.58,0.00005]
//Start = fraction [] // []

/*3. Famous nums
 Given a list of integers, write a function which gets rid of the numbers that is
occurring
 less than 5 times in the list.
*/

countOcc :: Int [Int] -> Int
countOcc x ls = length [el \\ el <- ls | x == el ] 


famousNum :: [Int] -> [Int]
famousNum ls = filter (\x = (countOcc x ls) >= 5) ls 
// Start = famousNum [1,1,1,1,1,1,2,3,4,4,4,4,5,5,5,5,5] // [1,1,1,1,1,1,5,5,5,5,5]
//Start = famousNum [] // []
// Start = famousNum [1,2,3,4,5,6,1,1,1,2,2,2,2,1,1,5,10,3] // [1,2,1,1,1,2,2,2,2,1,1]




/*4. Search
 
 Implement a search algorithm that searches through a list for Int n and
  returns the value in the list before n. 
 If there is no value, or the list is empty, return -1. e.g.
 , findPrev 5 [1,2,3,4,5,6] should return 4, 
 while findPrev 5 [0, 10, 20, 30] returns -1.
*/

findPrev :: Int [Int] -> Int 
findPrev x ls 
| isEmpty list = -1
= last list
where list =  (takeWhile (\c = c  <> x) ls) 
 
// Start = findPrev 5 [1,2,3,4,5,6] // 4
// Start = findPrev 1 [1,2,3,4,5,6] // -1
//Start = findPrev 1 [] // -1 

 

/* 5. Symmetric difference 

 Given two lists of integer numbers , return a sorted list containing the symmetric
  difference of the two lists; 
 The symmetric difference of two lists A and B is the list (A - B) U (B - A); 
 where A - B is The difference of two lists  defined as follows:  
 The List A-B consists of elements that are in A but not in B.
 And (U) the union of two lists is a list containing all the elements of A and B
  without duplicates 
*/

dif :: [Int] [Int] -> [Int]
dif lsa lsb = [c \\ c <- lsa | not (isMember c lsb)]
 
symmetricDif :: [Int] [Int] -> [Int]
symmetricDif lsa lsb = sort ((dif lsa lsb)  ++  (dif lsb lsa))

// Start = symmetricDif  [1,2,3,4,5] [2,4,6] //  [1,3,5,6]
// Start = symmetricDif  [1..5] [1..10] // [6,7,8,9,10]
// Start = symmetricDif  [1..5] [] // [1,2,3,4,5]



/*6. Not N

 Given a list of integers and an integer N, 
 eliminate from the list elements that are positioned before N in the list and
  are not equal to N,
 then compute the biquadrate of the numbers left in the list.
*/

notN :: Int [Int] -> [Int]
notN i ls = map (\x  = x ^ 4) ([c \\ c <- ls & j <- [0..i] | c == i] ++  [ls!!j \\  j <- [i..((length ls) - 1)]])
// Start = notN 3 [1..5] // [81,256,625]
// Start = notN 0  [] // []
// Start = notN 6 [10,8..1] // [[1296]]



/* 7.  Gap2 continued 

 Given a list of numbers, return True if the  
 the difference between two consecutive elements is always 2
 otherwise return False
*/
gap2C :: [Int] -> Bool
gap2C [] = False
gap2C [x] = True
gap2C [x,y:xs] 
| abs (x - y) == 2 = gap2C [y:xs]
= False  
// Start = gap2C [1,3,5,7,9] // True
// Start = gap2C [1,3,5,7,9,11,13,15] // True
// Start = gap2C [1,5,8] // False
//Start = gap2C [] // False






count :: Int [Int] -> Int
count x ls = length (filter (\n = n == x) ls)

occursExactlyOnce ::  [Int] Int  -> Bool
occursExactlyOnce  ls x = (count x ls) == 1 

removeDuplicates :: [Int] -> [Int]
removeDuplicates ls = filter (occursExactlyOnce ls) ls


// removeDuplicates [1,2,3,4,1,1,4,1,7,8]

// filter isOdd list 
// filter isEven list
// filter (occursExactlyOnce  [1,2,3,4,1,1,4,1,7,8])  [1,2,3,4,1,1,4,1,7,8]

/*
Given an integer number (let's call it a) and a list of lists of integers.
filter out the lists in which 'a' exists. 
*/

fn :: Int [[Int]] -> [[Int]]
fn a ls = filter (isMember  a) ls 

// Start = fn 3 [[1,2,3], [1,2,2]] // [[1,2,3]] 

