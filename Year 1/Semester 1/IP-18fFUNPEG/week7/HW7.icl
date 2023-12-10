module HW7
import StdEnv

//Write your name and nep code here: <Oyunbold DDJIJZ>

//Remember plagiarism is zero for both! (And from now on the hw-s will be hard, so it'll be easy to notice copying :) 

//Comment: Using arrays is not mandatory.

//----------------------1-------------------------
/*
You are given a text. You should make sure that in that text every new sentence starts with capital letter!
Example:
Input:
"Hi. i need your advice!    currently I am FAILING every subject, so do you think I should change my major? i am so screwed."
Output: 
"Hi. I need your advice! Currently I am FAILING every subject, so do you think I should change my major? I am so screwed."
*/


stringToList :: String -> [Char]
stringToList lst = [x \\ x <-: lst ]

charToString :: [Char] -> String
charToString lst  = {x \\ x <- lst}


helper :: [Char] [Int] Int -> [Char]
helper [] lst  n = []
helper lst []  n = lst
helper [x : xs] [y: ys] n 
| y == n = [toUpper x : helper xs ys (n + 1)]
= [x : helper xs  ([y]++ys )  (n + 1)]

// Start = helper ['a','b','c','a','b','c','a','b','c','p'] [0,1,2,9] 0

toUpperIndexes :: String -> [Int]
toUpperIndexes arr = [i \\ x <-: arr & i <- [0..] | ( i == 0 || (i > 1 && arr.[i-2]=='?') || (i > 1 && arr.[i-2]=='!') || (i > 1 && arr.[i-2]=='.'))]


everySentenceWithUpper :: String -> String
everySentenceWithUpper arr = charToString(helper (stringToList arr) (toUpperIndexes arr) 0)




// Start = everySentenceWithUpper "Hi. i need your advice! currently I am FAILING every subject, so do you think I should change my major? i am so screwed."
//"Hi. I need your advice! Currently I am FAILING every subject, so do you think I should change my major? I am so screwed."
// Start = everySentenceWithUpper "oops..! I think I lost my engagement ring... do you thing he will be mad?! please tell me that he won't!"
//"Oops..! I think I lost my engagement ring... Do you thing he will be mad?! Please tell me that he won't!"
// Start = everySentenceWithUpper "functional. programming. is. THE! BEST! subject."
// "Functional. Programming. Is. THE! BEST! Subject."
// Start = everySentenceWithUpper "o" // "O" 
// Start = everySentenceWithUpper "?" //"?"
// Start = everySentenceWithUpper ""//""






//----------------------2-------------------------
/*
You are given a text in one line. You should output the same text in a following way:
only three words should be in one line, and content should be aligned in center. Only the longest line should 
be starting immediately at the wall.
Example:
Input:
"It is a truth universally acknowledged, that a single man in possession of a good fortune, 
must be in want of a wife. However little known the feelings or views of such a man may be 
on his first entering a neighbourhood, this truth is so well fixed in the minds of the surrounding 
families, that he is considered the rightful property of some one or other of their daughters."

Output:
"           It is a
truth universally acknowledged,  //-->longest line, starts from the wall, meaning there is no space between it and wall
        that a single
      man in possession
          of a good
       fortune, must be
          in want of
       a wife. However
       little known the
      feelings or views
          of such a
          man may be
         on his first
  entering a neighbourhood,
        this truth is
        so well fixed
         in the minds
      of the surrounding
      families, that he
      is considered the
     rightful property of
         some one or
        other of their
          daughters.
"
*/


splitElements :: [Char]  Int -> [Char]
splitElements []  n = []
splitElements [x : xs ]  n 
| x == ' ' && n + 1 == 3 = [x, '\n' : splitElements xs 0]
| x == ' ' && n + 1 < 3 = [x : splitElements xs (n+1)]
= [x : splitElements xs n]
// Start =charToString ( splitElements ['a',' ','b',' ','c',' ','d'] 0)



testing :: [Char] [Char] -> [[Char]]
testing [] lst = [lst]
testing [x : xs ] lst
| x == '\n' = [lst : testing xs []]
= testing xs (lst  ++ [x])


// Start = testing ['a','b','\n','a','b','\n','a'] []

findLongest :: [[Char]] Int -> Int
findLongest [] n = n
findLongest [x : xs] n 
| length x > n = findLongest xs (length x)
= findLongest xs n

// Start = findLongest [['a','b','c'],['a','b','a','b','a','b',' ']] 0 

addSpace:: [Char] Int -> [Char]
addSpace lst n = [' ' \\ x <- [1.. ntimes]] ++ lst ++ [' ' \\ x <- [1.. ntimes]] ++ ['\n']

where  val = length lst 
       ntimes = (n - val) / 2


// Start = addSpace ['a','b','c'] 7


last :: [[Char]] -> [Char]
last lst = flatten ((map(\x = addSpace x (findLongest lst 0) ) lst))


// Start = last [['a','b','c','d'],['a','b','c','d','b','m','c'],['a','b','c','d']]


centerAlign :: String -> String
centerAlign arr = charToString ( last (testing (splitElements (stringToList arr) 0 ) [] ) )








// Start = centerAlign "It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife. However little known the feelings or views of such a man may be on his first entering a neighbourhood, this truth is so well fixed in the minds of the surrounding families, that he is considered the rightful property of some one or other of their daughters."
// Start = centerAlign "CLEAN" // "CLEAN"
// Start = centerAlign "Yes, CLEAN is cool!"
/*
"Yes, CLEAN is --> the longest line at the wall
   cool!
"
*/
// Start = centerAlign "Tommy and his sister Annika had a new neighbor. Her name was Pippi Longstocking. She was nine years old, and she lived all alone in her house, Villa Villekulla."
/*
____Tommy and his_____
___sister Annika had___
____a new neighbor.____
_____Her name was______
Pippi Longstocking. She         --> the longest line at the wall
    was nine years
     old, and she
   lived all alone
    in her house,
  Villa Villekulla.
"
*/













