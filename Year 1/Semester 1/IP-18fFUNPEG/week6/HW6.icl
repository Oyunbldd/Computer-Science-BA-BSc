module HW6
import StdEnv

//REMEMBER PLAGIARISM IS 0!
//WRITE YOUR NEPTUN CODE AND FULL NAME HERE:Oyunbold DDJIJZ


/*  TASK 1:

You are given a list of tuples of integers. If first member of tuple is smaller than second, eliminate that tuple
from the list. If not, substract first element from second and repeat eliminated elements that many times in the 
output list.

Example:
Input: [(1,3),(10,9),(2,7),(4,2),(19,5)]
Eliminated elements -> (1,3) and (2,7)
(1,3) should be repeated (10-9)=1 times
(2,7) should be repeated (4-2)=2 times
Output: [(1,3),(2,7),(2,7)]
 
*/
eliminate :: [(Int, Int)] -> [(Int,Int)]
eliminate lst = [(x,y) \\ x <- map(\x=fst x) lst & y <- map(\x=snd x) lst | x < y ]

repeat :: [(Int,Int)] -> [Int]
repeat lst = [ x - y \\ x <- map(\x= fst x) lst  & y <- map(\x=snd x) lst  | x > y]


eliminateAndRepeat :: [(Int,Int)] -> [(Int,Int)] 
eliminateAndRepeat lst = flatten [ repeatn y x  \\ x <- eliminate lst & y <- repeat lst ]

// Start = eliminateAndRepeat [(1,3),(10,9),(2,7),(4,2),(19,5)]//[(1,3),(2,7),(2,7)]
// Start = eliminateAndRepeat [(20,10),(15,9),(150,140),(1,0),(100,1000)]//[(100,1000),(100,1000),(100,1000),(100,1000),(100,1000),(100,1000),(100,1000),(100,1000),(100,1000),(100,1000)]
// Start = eliminateAndRepeat []//[]
// Start = eliminateAndRepeat [(5,4),(11,10),(2,0),(47,8),(27,3)]//[]
// Start = eliminateAndRepeat [(6,16),(3,15),(87,98),(159,187),(94,97)]//[]


/*  TASK 2:

Max in tuple list means that first member of the tuple should be bigger than every other first member of other 
tuples and same for second member. 
You are given list of list of tuples. Find maximum tuple for every list, and then output their sum.
Suppose that every list has maximum.

Example:
Input: [[(1,2),(2,3),(10,12),(5,8)],[(0,1),(3,3),(9,11)]]
This list contains two sublist. In first sublist maximum is -> (10,12) and in second -> (9,11)
So we should sum them: 10+9=19, 12+11=23
Output: (19,23)
*/

helperFunc :: [(Int,Int)] -> (Int,Int)
helperFunc lst = (maxList flist , maxList slist)
where flist = map(\x = fst x) lst
      slist = map(\x = snd x) lst

// Start = helperFunc [(1,2),(34,3),(5,6)]     

test :: [[(Int,Int)]] -> [(Int,Int)]
test lst = [helperFunc x \\  x <- lst]

// Start = test [[(1,2),(2,3),(10,12),(5,8)],[(0,1),(3,3),(9,11)]]

ans :: [(Int,Int)] -> (Int,Int)
ans lst = (a,b)
where  a = sum(map(\x = fst x) lst)
       b = sum(map(\x = snd x) lst)

findMaxAndSum :: [[(Int,Int)]] -> (Int,Int)
findMaxAndSum lst =  ans (test lst)


// Start = findMaxAndSum [[(1,2),(2,3),(10,12),(5,8)],[(0,1),(3,3),(9,11)]]//(19,23)
// Start = findMaxAndSum [[(19,20),(4,6),(13,8)],[(1,0),(9,9)],[(12,3),(15,23),(100,99)]]//((19+100),(99+20))=(128,128)
// Start = findMaxAndSum [] // (0,0)
// Start = findMaxAndSum [[(1,2),(3,4),(2,3)],[(2,1),(4,3),(5,4),(2,3),(4,1)],[(99,83),(34,13),(78,39),(100,100)],[(2,2),(3,3)],[(1,1)]] 
//1->(3,4),2->(5,4),3->(100,100),4->(3,3),5->(1,1) => (112,112)











