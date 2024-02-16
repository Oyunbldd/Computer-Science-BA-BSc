module endtermb_solved

import StdEnv

/*---------------*/
/* 1.
Given two strings, your task is to replace each occurrence of 
characters of the second string in the first string with a hyphen ('-').
*/


// hide :: String String  -> String 


	
// Start=hide "Hello World" "l" //"He--o Wor-d"
//Start=hide "Introduction to Functional Programming" "ducinm" 
//"I-tro---t-o- to F---t-o-al Progra----g"
//Start=hide "Life itself is a quotation." "itou"
//"L-fe --self -s a q---a---n."

/*---------------*/
/* 2. 
Write a function that takes a string and returns a new string 
with the middle element appended at the end of the string 
as many times as the length of the string.
Eg. Input: "apple",  middle element -> p, length =  5
output: "appleppppp"
*/


f1 :: String -> String
f1 str = str +++ {str.[l] \\ x<-:str}
where 
    l = (size str / 2) - 1

		
// Start = f1 "apple" // "appleppppp"
// Start = f1 "pear" // "peareeee"
// Start = f1 "" // ""



/*---------------*/
/* 3.
Determine if the given strings are anagrams. An Anagram is 
a word or phrase formed by rearranging the letters of a 
different word or phrase, typically using all the original 
letters exactly once. Note that, your function should be 
case insensitive. Also, you shouldn't consider spaces.
Eg. "William Shakespeare" "I am a weakish speller" -> True
    "anagram" "nagaram" -> True
    "rat" "car" -> false
Tip: you can use isAlpha built-in method.
*/


strToChar :: String -> [Char]
strToChar str = sort [toLower a \\ a<-:str]


// Start = strToChar "Listen"
// Start = strToChar "Silent"

isAnagram :: String String -> Bool 
isAnagram str1 str2 
| size str1 <> size str2 = False 
| size str1 == length [1 \\ i <- strToChar str1 &  j <- strToChar str2 | i == j] = True
= False 

// where ss1 = sort (strToChar str1)
//       ss2 = sort (strToChar str2)


// Start = isAnagram "William Shakespeare" "I am a weakish speller" // True
// Start = isAnagram "Listen" "Silent" // True
// Start = isAnagram "anagram" "nagaram" // True
// Start = isAnagram "rat" "car" // False
// Start = isAnagram "hello" "world" // False

/*---------------*/
/* 4.
Write a function that sorts a list of arrays based on the 
minimum of each array, while preserving the order of elements 
within each array and maintaining the original order 
of arrays that have equal minimum.
*/



//Start = sortM [{2,2,2},{8,8},{4,4},{3,3,3,3},{2}] 
// [{2,2,2},{2},{3,3,3,3},{4,4},{8,8}]]
//Start = sortM [{5.0},{3.0,3.0,3.0},{2.0,4.0},{1.0,1.0,1.0,1.0}] 
// [{1,1,1,1},{2,4},{3,3,3},{5}]
//Start :: [{Int}]
//Start = sortM [] // []




/*---------------*/
:: University = {uniName::String,students::[Student],teachers::[Teacher]}
:: Teacher = {name::String,subject::String}
:: Student = {studentName::String,age::Int,grades::{Int},favoriteTeacher::Teacher}

ELTE::University
ELTE={uniName="ELTE",students=[Marko,Nikola,Josh,Dame],teachers=[Mary,Peter,John]}
BMI::University
BMI={uniName="BMI",students=[Ana,Josh,Sofi,Nikola],teachers=[Viktor,John,Peter]}
EmptyUni::University
EmptyUni={uniName="Empty",students=[],teachers=[]}

Peter::Teacher
Peter={name="Peter",subject="Functional"}
Viktor::Teacher
Viktor={name="Viktor",subject="Math"}
Mary::Teacher
Mary={name="Mary",subject="OOP"}
John::Teacher
John={name="John",subject="Functional"}

Marko::Student
Marko={studentName="Marko",age=19,grades={4,4,4,5},favoriteTeacher= Mary}
Sofi::Student
Sofi={studentName="Sofi",age=22,grades={5,5,4,5,5},favoriteTeacher=John}
Dame::Student
Dame={studentName="Dame",age=21,grades={2,3,4,5},favoriteTeacher=Peter}
Ana::Student
Ana={studentName="Ana",age=18,grades={5,5,5,5},favoriteTeacher=Viktor}
Nikola::Student
Nikola={studentName="Nikola",age=19,grades={4,4,4,4,2},favoriteTeacher=Peter}
Nik::Student
Nik={studentName="Nik",age=20,grades={4,4,4,4,3},favoriteTeacher=Peter}
Nik2::Student
Nik2={studentName="Nik2",age=22,grades={4,4,4,4,5},favoriteTeacher=Peter}
Josh::Student
Josh={studentName="Josh",age=22,grades={4,5,5},favoriteTeacher=John}

/*---------------*/
/* 5.
Given the above records, write a function that takes 
an array of Universities and returns a list of those 
names that are favourite Teachers of all students that 
have a gpa more than 4.6, there should be no duplicates.
*/



//Start = bestSub {ELTE} // ["John"]
//Start = bestSub {ELTE,BMI,EmptyUni}// ["John","Viktor"]

/*---------------*/
/* 6.
Student of the year needs to be awarded to the 
student who is the oldest and has the best gpa.
Write a function that takes a university and returns 
the (name,age,gpa) pair of the awarded student.
*/


//Start = award ELTE // ("Josh",22,4.66666666666667)
//Start = award BMI // ("Ana",18,5)

/*---------------*/
/* 7.1 5p
Make 3 new types Day, Date and DateStamp.
Day is enumeration of the values Mon/Tue/Wed/Thu/Fri/Sat/Sun.
Date is a type synonym for a triple tuple of the type 
(Int,String,Int) having day, month and year.
DateStamp is a type synonym for a tuple of (Date,Day).
*/

:: Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun 

:: Date :== (Int,String,Int)

:: DateStamp :== (Date, Day)


d1 :: Date
d1 = (2,"Jan",2024)
d2 :: Date
d2 = (10,"Aug",2023)
d3 :: Date
d3 = (8, "Apr",2023)
ds1 :: DateStamp
ds1 = (d1, Sun)
ds2 :: DateStamp
ds2 = (d1, Tue)
ds3 :: DateStamp
ds3 = (d2, Sun)
ds4 :: DateStamp
ds4 = (d3, Mon)

// Start = ds2 // (Tue,(2,"Jan",2024))
// Start = d2 // (10,"Aug",2023)


/*---------------*/
/* 7.2 5p
Write a function that takes a DateStamp and checks if the 
datestamp refers to the first Monday or Tuesday of the month. 
Assume that first Monday or Tuesday can be confirmed if the 
day is Monday or Tuesday and the day number is less than 5.
*/

firstday :: DateStamp -> Bool 
firstday (d,Mon) = (fst3 d) < 5
firstday (d,Tue) = (fst3 d) < 5
firstday _ = False

// Start = firstday ds1 // False
// Start = firstday ds2 // True
// Start = firstday ds3 // False
// Start = firstday ds4 // False

/*---------------*/
/* 8.
Write a function that takes an array of DateStamps and 
sorts them based on the Day (for same days any order is good).
*/



//Start = sortDS {ds1,ds2} //{((2,"Jan",2024),Tue),((2,"Jan",2024),Sun)}
//Start = sortDS {ds1,ds2,ds3,ds4} 
//{((2,"Jan",2024),Tue),((2,"Jan",2024),Sun),((8,"Apr",2023),Mon),((10,"Aug",2023),Sun)}

/*---------------*/
/* 9.
Given a class 'Op' for any type a with the '--' binary operator, 
which takes 2 arrays of any type a and returns an array of 
any type a elements. Write an instance to define '--' operator 
for arrays of Char type, which is the intersection of its given 
arguments in sorted order without duplicates. 
*/


//Start={'a','b'} -- {'b','c'} //{'b'}
//Start={'h','e','l','l','o'} -- {'w','o','r','l','d'} //{'l','o'}
//Start={'h','e','l','l','o','g','o','o','d'} -- {'m','o','r','n','i','n','g'} 
//{'g','o'}


/*---------------*/
:: Tree a = Node a (Tree a) (Tree a) 
          | Leaf
          
atree = (Node 2 (Node 3 (Node 1 Leaf Leaf) Leaf) Leaf)
ctree = Node 1 (Node 2 (Node 8 Leaf Leaf)(Node 9 (Node 4 (Node 16 Leaf Leaf) Leaf) Leaf)) (Node 7 (Node 3 Leaf Leaf)(Node 2 Leaf Leaf))

/* 10.
Given a tree structure, write a function transformTree that 
takes a tree and transforms it based on the following rules:
a. Swap the left and right subtrees of every node.
b. Subtract the value of its own depth from the node.
c. Repeat for all nodes.
example:
             10              level 1
            / \
           5   15            level 2
          / \  / \
         3   7 12 18         level 3
        / \
       1   9				 level 4
       
transformedTree:
             9               level 1
            / \
           13   3            level 2
          / \   / \
         15  9 4   0         level 3
        		   / \
       			  5   -3	 level 4
*/

tree1 = Node 10 (Node 5 (Node 3 (Node 1 Leaf Leaf) (Node 9 Leaf Leaf)) (Node 7 Leaf Leaf)) (Node 15 (Node 12 Leaf Leaf) (Node 18 Leaf Leaf))
tree2 = Node 12 (Node 8 (Node 4 Leaf Leaf) (Node 7 (Node 6 Leaf Leaf) Leaf)) (Node 10 Leaf (Node 15 Leaf (Node 14 Leaf Leaf)))


//Start = transTree tree1 
//(Node 9 (Node 13 (Node 15 Leaf Leaf) (Node 9 Leaf Leaf)) (Node 3 (Node 4 Leaf Leaf) (Node 0 (Node 5 Leaf Leaf) (Node -3 Leaf Leaf))))
//Start = transTree tree2
//(Node 11 (Node 8 (Node 12 (Node 10 Leaf Leaf) Leaf) Leaf) (Node 6 (Node 4 Leaf (Node 2 Leaf Leaf)) (Node 1 Leaf Leaf)))

/*---------------*/
/* 11.
Write a function that takes a tree of type Int and 
replaces the Leaf whose parent has an odd value
with the (Node 0 Leaf Leaf).
*/



//Start = repL atree // (Node 2 (Node 3 (Node 1 (Node 0 Leaf Leaf) (Node 0 Leaf Leaf)) (Node 0 Leaf Leaf)) Leaf)
//Start = repL ctree 
//(Node 1 (Node 2 (Node 8 Leaf Leaf) (Node 9 (Node 4 (Node 16 Leaf Leaf) Leaf) (Node 0 Leaf Leaf))) (Node 7 (Node 3 (Node 0 Leaf Leaf) (Node 0 Leaf Leaf)) (Node 2 Leaf Leaf)))

/*---------------*/
/* 12.
Given a binary search tree and an int, return a list 
of all the elements along the path from the root node 
to the double of the int we are looking for. Assume that 
the tree contains unique elements. If the int does 
not exist in the tree return an empty list. */

bst1 = (Node 1 Leaf (Node 20 (Node 3 (Node 2 Leaf Leaf) (Node 4 Leaf (Node 12 (Node 5 Leaf Leaf) Leaf))) (Node 45 (Node 34 (Node 22 Leaf Leaf) Leaf) (Node 112 (Node 53 Leaf Leaf) Leaf))))
bst2 = (Node 1 Leaf (Node 20 (Node 7 Leaf (Node 12 (Node 11 (Node 9 Leaf Leaf) Leaf) Leaf)) Leaf))
bst3 = (Node 1 Leaf (Node 20 (Node 3 (Node 2 Leaf Leaf) (Node 4 Leaf (Node 10 (Node 8 Leaf Leaf) Leaf))) (Node 45 (Node 34 (Node 22 Leaf Leaf) Leaf) (Node 112 (Node 53 Leaf Leaf) Leaf))))


//Start = pathTo bst1 6 //[1,20,3,4,12]
//Start = pathTo bst2 10 // [1,20]
//Start = pathTo bst3 17 // [1,20,45,34]
//Start = pathTo bst3 54 // []
/*---------------*/


