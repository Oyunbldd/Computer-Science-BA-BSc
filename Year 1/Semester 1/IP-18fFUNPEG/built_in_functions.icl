module built_in_functions
import StdEnv

//*---------CHAR------------*
//Start = toChar 68 //shows the relevant char in the ascii table 
//Start = toUpper 'a' //retuns the upper case of the char
//Start = toLower 'A' //returns the lower case of the char
//Start = isLower 'a' // returns true if the char is lower case
//Start = isUpper 'a' // returns false if the char is lower case

//*---------INT-------------*
//Start = gcd 12 18 // greatest common divisor
//Start = 2 rem 2 // remainder 
//Start = isEven 2 // isEven is a function that returns true if the number is even
//Start = isOdd 2 // isOdd is a function that returns true if the number is odd
//Start = abs -2
//Start = max 12 13
//Start = min 12 13

//*----------REAL------------*
//Start = abs -2.0
//Start = sqrt 4.0
//Start = max 12.4 12.6
//Start = min 12.4 12.6

//*---------STRING-----------*
//Start = toString 4
//Start = toString 'a'
//Start = toString 42.3
//Start = toString (isEven 5)
//Start = "Clean "+++"rocks"
//Start = toString ['a','b','c']

//*-----------LIST------------*
//Start = length [1,2,3]
//Start = flatten [[1,2],[3,4]]
//Start = isEmpty [[]]
//Start = hd [1,2,3]
//Start = tl [1,2,3]
//Start = init [1,2,3]
//Start = last [1,2,3]
// Start = take 2 [1,2,3,4]
//Start = drop 2 [1,2,3,4]
// Start = takeWhile (isEven) [2,2,3,4]
// Start = dropWhile (isOdd) [1,2,3,4]
//Start = filter isEven [1,2,3,4]//[2,4]
//Start = reverse [1,2,3]//[3,2,1] 
//Start = insertAt 1 2 [3,4,5]// [3,2,4,5] it inserts an element in the list at the given position,
//if the list is empty it returns the list with the element
//Start = removeAt 1 [2,3,4]// [2,4] it removes the element at the given position
//Start = updateAt 1 2 [3,4,5]
//Start = splitAt 2 [2,3,4]// ([2,3],[4]) it splits the list at the given position
//Start = foldr (++) [] [[1,2],[3,4]]//[1,2,3,4]
//Start = indexList [1,3,4,2,3]//[0,1,2,3,4] it returns a list of indexes
//Start = iterate ((+)1) 0//producing infinite list 
//Start = until ((<)100) ((+)10) 20 //Starting with 20, until 100 is less, add 10
//Start = map ((/) 2) [2,4,6]// [1,0,0] it applies a function to all the elements of the list 
//Start = map (\x = 2/x) [2,4,6]// [1,0,0] it applies a function to all the elements of the list with lambda
//Start = repeatn 2 [1,2]// [[1,2],[1,2]] it repeats a list n times
//Start = repeat 1 //it returns an infinite list of repeated elements
//Start = sort [9,4,5,7,1,2,8,3,6]
//Start = sortBy (>) [1..10]
//Start = maxList [1,5,3,12]
//Start = minList [1,5,3,12]
//Start = scan (+) 10 [1,2,3,4]//[10,11,13,16,20]
//Start = fst ('a','b')
//Start = snd ('a','b')
//Start = fst3(1, 2, 3)
//Start = snd3(1.1, 2.2, 3.3)
//Start = thd3('#', "haha", True)
//Start = unzip [(1,2),(11,22)]//it returns a pair of lists, the first one contains the first elements of the pairs, the second one contains the second elements of the pairs
//Start = zip ([1,2,3],[11,22,33])//it returns a list of pairs, the first element of the pair is the first element of the first list, the second element of the pair is the first element of the second list, and so on
//Start = and [True,True,False] 
//Start = or [True,True,False] 
//Start = isMember 11 [1..10]
//Start = isAnyMember [1,11,111] [1..10]//true it returns true if at least one element of the list is a member of the second list
//Start = removeDup [2,2,2,2,2,2,5,5,5,5,5]//[2,5] 
//Start = removeMember 2 [1,2,2,2,3,3] //[1,2,2,3,3] it removes the first occurrence of the element from the list
//Start = removeMembers  [1..10] [2,3]  //removeMembers list membersToRemove it removes the first occurrence of the elements from the list
//Start =sum [1,2,3]//6 it returns the sum of the elements of the list
//Start =prod [1..5]//120
//Start = avg [1..10]//5 --> sum/length





