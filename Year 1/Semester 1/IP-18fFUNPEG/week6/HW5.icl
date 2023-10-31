module HW5
import StdEnv


//REMEMBER: PLAGIARISM IS ZERO!

//Please write your NAME and neptun code here: Oyunbold DDJIJZ


//TASK 1:

/*
You are given a list of characters. Output a string, which will contain same characters from the given list
on one line. 
Hint: "\n" is a new line character.
*/
findChar :: Char [Char] -> String
findChar c [] = "\n"
findChar c [x : xs] 
| x == c = toString(c) +++ findChar c xs
= findChar c xs

// Start = findChar 'c' ['a','b','c','c','c','b']

collectChars :: [Char] -> String
collectChars  [] = ""
collectChars [x : xs] = findChar x ([x]++xs) +++ collectChars (filter ((<>)x) xs)

// Start = collectChars []//""
// Start = collectChars ['a', 'a', 'a', 'b', 'b', 'c', 'c', 'c', 'c', 'c']
/* Output:
"aaa
bb
ccccc
"
*/
// Start = collectChars ['*','*','@','#','*','#','#','@','#','#','@','*', '*', '*', '@', '#']
/* Output:
"******
@@@@
######
"
*/

//TASK 2:

/*
Your input is a list of characters. Write function that will pack the consecutive duplicates of the 
list's elements into sublists,meaning that if the list contains repeated elements they should be placed 
in separate sublists.
*/

helperFunction :: Char [Char] -> [Char]
helperFunction c [] = []
helperFunction c lst = takeWhile((==)c) lst

// Start= helperFunction 'c' ['a','b','c']

separate :: [Char] -> [[Char]]
separate [] = []
separate [x : xs] = [helperFunction x ([x] ++ xs) : separate (dropWhile((==)x) xs)]


// Start = separate ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] // [['a','a','a','a'],['b'],['c','c'],['a','a'],['d'],['e','e','e','e']]
// Start = separate ['a','b','c','d'] // [['a'],['b'],['c'],['d']]
// Start = separate ['a','a','b','b','b','b','b','b','b','b','b','b','b','a','a'] //[['a','a'],['b','b','b','b','b','b','b','b','b','b','b'],['a','a']]
                           
                            
                            
                            
                            
