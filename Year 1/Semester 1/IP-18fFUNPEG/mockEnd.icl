module mockEnd
import StdEnv


/* 1. Remove vowels - 10 points
Given a string, remove all the english vowels. */

vowels = ['a','e','i','o','u','A','E','I','O','U']

removeVowel :: String -> String
removeVowel lst = toString [x \\ x <-: lst | not(isMember x vowels)] 


// Start = removeVowel "Hello World!" // "Hll Wrld!"
//Start = removeVowel "XaeiouAEIOU" // "X"
//Start = removeVowel "HELLO WoRLD" // "HLL WRLD"



/* 2. Trim whitespaces - 10 points
Given a string, trim leading and ending whitespaces. */

//Using dropWhile using lead and end but ending condition using reverse it!!

// trimWhiteSpace :: String -> String
// trimWhiteSpace ans =  drop
// trimWhiteSpace arr = [x \\ x <-: arr | ]


//Start = trimWhiteSpace "  Hello World!       " // "Hello World!"
//Start = trimWhiteSpace " H e l l o   " // "H e l l o"
//Start = trimWhiteSpace "       " // ""
//Start = trimWhiteSpace "     He  l  l o     " // "He  l  l o"


:: Tree a = Node a (Tree a) (Tree a) 
          | Leaf
         
treeOne = Node 10 (Node 8 (Node 4 (Node 10 Leaf Leaf) Leaf) (Node 7 Leaf Leaf)) (Node 7 (Node 10 Leaf Leaf) (Node 10 Leaf (Node 10 Leaf Leaf)))
treeTwo = Node 10 (Node 2 (Node 4 (Node 9 Leaf Leaf) Leaf) (Node 3 Leaf Leaf)) (Node 3 (Node 6 Leaf Leaf) (Node 5 Leaf (Node 3 Leaf Leaf))) 
treeThree = Node "haha" (Node "hehe" (Node "hoho" (Node "heyhey" Leaf Leaf) Leaf) (Node "haha" Leaf Leaf)) (Node "hey" (Node "hmm" Leaf Leaf) (Node "haha" Leaf (Node "hmm!" Leaf Leaf))) 
treeFour = Node 10 (Node 5 (Node 4 (Node 2 Leaf Leaf) Leaf) (Node 7 Leaf Leaf)) (Node 14 (Node 13 Leaf Leaf) (Node 15 Leaf (Node 18 Leaf Leaf)))
treeFive = Node 10 (Node 5 (Node 14 (Node 2 Leaf Leaf) Leaf) (Node 7 Leaf Leaf)) (Node 14 (Node 13 Leaf Leaf) (Node 15 Leaf (Node 18 Leaf Leaf)))
treeSix = Node 10 (Node 5 (Node 4 (Node 6 Leaf Leaf) Leaf) (Node 7 Leaf Leaf)) (Node 4 (Node 13 Leaf Leaf) (Node 20 Leaf (Node 18 Leaf Leaf)))
treeSeven = Node 10 (Node 5 (Node 14 (Node 2 Leaf Leaf) Leaf) (Node 7 Leaf Leaf)) (Node 14 (Node 13 Leaf Leaf) (Node 15 Leaf (Node 18 Leaf Leaf)))


/* 3. Value counting - 10 points
Given a tree, and a value, count the nodes that have that value. */

nodeCountByValue :: (Tree a) a -> Int | Eq a // don't forget to write Eq a here!!!
nodeCountByValue Leaf _ = 0 
nodeCountByValue (Node x le ri ) n
| x == n = 1 + (nodeCountByValue le n) + (nodeCountByValue ri n)
= (nodeCountByValue le n ) + (nodeCountByValue ri n)

// Start = nodeCountByValue treeOne 10 // 5
// Start = nodeCountByValue treeTwo 3 // 3
// Start = nodeCountByValue treeThree "haha" // 3



/* 4. Check BST - 10 points
Given a tree, check if the tree is a binary search tree. */

NodeExtract :: (Tree a) -> a
NodeExtract (Node x left right) = x


bsTree :: (Tree a) -> Bool | Ord a
bsTree Leaf = True
bsTree (Node x Leaf Leaf) = True
bsTree (Node x Leaf right) = x < (NodeExtract right) && bsTree right
bsTree (Node x left Leaf)  = x > (NodeExtract left) && bsTree left
bsTree (Node x left right) = (NodeExtract left) < x && (NodeExtract right) > x && bsTree left && bsTree right




// Start = bsTree treeFour // True
// Start = bsTree treeFive // False


/* 5. Count parents - 10 points
Given a tree of integers, count the nodes for which the 
node value is greater than the sum of its both children.
All the node in the tree are positive numbers. */

NodeExtractInt :: (Tree Int) -> Int
NodeExtractInt Leaf = 0
NodeExtractInt (Node x left right) = x

countHeap :: (Tree Int) -> Int
countHeap Leaf = 0 
countHeap (Node x left right) 
| x > (NodeExtractInt left) + (NodeExtractInt right) = 1 + countHeap left + countHeap right
= countHeap left + countHeap right


// Start = countHeap treeSix // 6
// Start = countHeap treeSeven // 5




/* 6. Same trees - 10 points
Given two binary trees of integers, write a function to check 
if they are the same or not (structurally identical, 
and the nodes have the same value). */

getNode :: (Tree Int) -> Int
getNode (Node x l r) = x 

getL :: (Tree Int) -> ( Tree Int)
getL (Node  x l r) = l

getR :: (Tree Int) -> ( Tree Int)
getR ( Node  x l r) = r

isLeaf :: (Tree Int) -> Bool 
isLeaf Leaf = True 
isLeaf _  = False


isSameTree :: (Tree Int) (Tree Int) -> Bool 
isSameTree Leaf Leaf = True
isSameTree (Node x le ri) (Node y lex rix) 
| x <> y = False
// = 
// | getL le <> getL lex || 


//Start = isSameTree treeOne treeOne // True
//Start = isSameTree treeTwo treeTwo // True
//Start = isSameTree treeOne treeTwo // False
//Start = isSameTree treeFive treeFour // False


/* 7. Class - 10 points
Given a class 'UnionSet' for any type a and declare the 'U' binary operator 
which takes 2 lists of any type a and returns a list of any type a elements.
Write an instance to define 'U' operator for the Int type, 
which is the union of its given arguments in sorted order. */



class UnionSet a
where
	(U) :: [a] [a] -> [a]
 


// Start = [2,3,4,5,6,7] U [6,7,2,4,6]	// [2,3,4,5,6,7]
//Start = [8,0,9,-2,-3] U [2,3,4,5] //[-3,-2,0,2,3,4,5,8,9]
//Start = [] U [5,4,6] // [4,5,6]


/* 8. Finding index - 10 points
Given an integer array and the integer list, which is an index list. 
Return the list of integers, which are the values at the indecses 
of the given array. Indexing starts at 0.
E.g: {23,45,346,6,7,73,92} [0,2,3,4,6] => [23,346,6,7,92]
If the given index is invalid, then no need to include it.
{23,45,346,6,7,73,92} [6,-10,1,0,8] => [92,45,23]
Index -10 and 8 are ignored because they are out of bound. */


subList :: {Int} [Int] -> [Int]
subList arr index = map (\x = arr.[x]) (filter (\x= (x < len) && (x >= 0)) index)
where
	len = length [x \\ x <-: arr]

// Start = subList {23,45,346,6,7,73,92} [0,2,3,4,5] // [23,346,6,7,73]
// Start = subList {-23,0,90,76,354,7} [1,0,-5,8] // [0,-23]
// Start = subList {} [3,5,-6,2] // []
// Start = subList {4,3,6,7,8} [-1,-2] // []


/* 9. Players - 10 points
You are given a player's infos of a certain Basketball team.
We want to know the order of excellence of players on given 
position, so that we can make a team for the upcoming tournament.
Implement the function sortPlayer such that returns the players 
names with their excellence in increasing order.
The excellence is computed like it takes the highest pointWon, 
if it is equal, sort by height, if equal, sort by health. */

:: Position = PointGuard | ShootingGuard | Center | PowerForward | SmallForward
:: Player = {n::String,position::Position,pointWon::Int,health::Int,height::Int}

players1 = {{n="John", position=Center,pointWon=50,health=7,height=186}, {n="Andy", position=Center,pointWon=55,health=8,height=190}, {n="Micheal", position=Center,pointWon=49,health=6,height=194}, {n="Tom", position=Center,pointWon=49,health=6,height=186},
			 {n="Jeremy", position=Center,pointWon=49,health=10,height=180}, {n="Jo", position=SmallForward,pointWon=50,health=7,height=186}}
players2 = {{n="John", position=Center,pointWon=50,health=7,height=186}, {n="Andy", position=ShootingGuard,pointWon=55,health=8,height=190}, {n="Micheal", position=PowerForward,pointWon=49,health=6,height=194}, {n="Tom", position=SmallForward,pointWon=49,health=6,height=186},
			 {n="Jeremy", position=PointGuard,pointWon=49,health=10,height=180}, {n="Jo", position=SmallForward,pointWon=50,health=7,height=186}}

instance == Position
where
	(==) PointGuard PointGuard = True
	(==) ShootingGuard ShootingGuard = True
	(==) Center Center = True
	(==) PowerForward PowerForward = True
	(==) SmallForward SmallForward = True
	(==) _ _ = False
	
aux :: Player Player -> Bool
aux p1 p2
|p1.pointWon == p2.pointWon && p1.height == p2.height = p1.health < p2.health
|p1.pointWon == p2.pointWon = p1.height < p2.height
= p1.pointWon < p2.pointWon

sortPlayer :: Position {Player} -> {String}
sortPlayer p a = {player.n \\ player <- (sortBy (aux) [x \\ x <-: a | x.position == p])}

//Start = sortPlayer Center players1 // {"Jeremy","Tom","Micheal","John","Andy"}
//Start = sortPlayer SmallForward players2 // {"Tom","Jo"}
