module trees
import StdEnv

// Binary tree: https://www.geeksforgeeks.org/binary-tree-data-structure/
// Binary search tree: https://www.geeksforgeeks.org/tag/binary-tree/



// Examples
// :: Tree a = Node a (Tree a) (Tree a) 
//           | Leaf

// Tree1 see link: http://graphonline.ru/en/?graph=RDODcKkbEjpzIbIh
Tree1 :: Tree Int
Tree1 = Node 7 Leaf Leaf

// Tree2 see link: http://graphonline.ru/en/?graph=apYgfCbqYeaQRHNL
Tree2 :: Tree Int
Tree2 = Node 0 (Node 1 (Node 3 Leaf Leaf) (Node 4 Leaf Leaf))  (Node 2 (Node 5 Leaf Leaf) (Node 6 Leaf Leaf)) 
//Start = Tree2

// Tree3 see link: http://graphonline.ru/en/?graph=YMMkGtZycajcoXEU
Tree3 :: Tree Int
Tree3 = Node 0 (Node 1 (Node 3 Leaf (Node 8 Leaf Leaf)) Leaf)  (Node 2 Leaf Leaf)



// 1. Given a tree, find the number of its nodes (non leaves).
sizeT :: (Tree a) -> Int
sizeT Leaf = 0
sizeT (Node a l r) = 1 + sizeT l + sizeT r

//Node a l r ->a(value/key), l(left subtree->Tree a), r(right subtree->Tree a)
/*
=1 + sizeT (Node 1 (Node 3 Leaf Leaf) (Node 4 Leaf Leaf)) 
   + sizeT (Node 2 (Node 5 Leaf Leaf) (Node 6 Leaf Leaf))
=1 + 1 + sizeT (Node 3 Leaf Leaf) + sizeT (Node 4 Leaf Leaf)
   + 1 + sizeT (Node 5 Leaf Leaf) + sizeT (Node 6 Leaf Leaf)
=1 + 1 + (1 + sizeT Leaf + sizeT Leaf) + (1 + sizeT Leaf + sizeT Leaf)
   + 1 + (1 + sizeT Leaf + sizeT Leaf) + (1 + sizeT Leaf + sizeT Leaf)
=1 + 1 + (1+0+0) + (1+0+0)
   + 1 + (1+0+0) + (1+0+0)
=7
*/
// Start = sizeT Tree1
// Start = sizeT Tree2
// Start = sizeT Tree3



// 2. Given a tree, find its depth.
depth :: (Tree a) -> Int
depth Leaf = 0
depth (Node _ le ri) = (max (depth le) (depth ri)) + 1

//Start = depth Tree1 // 1
// Start = depth Tree2 // 3
//Start = depth Tree3 // 4

//Given a tree with key of type Int, find the sum of its nodes (leaf is 0)

sumT :: (Tree Int)->Int
sumT Leaf = 0
sumT (Node x le ri) = x + sumT le + sumT ri

//Start = sumT Tree1
//Start = sumT Tree2
//Start = sumT Tree3




// 3. Tree traversal (different ways of converting a given tree into a list):
// Create a tree and write the elements of it in 3 ways: 
// inorder, preorder, postorder

atree1 :: Tree Int
atree1 = Node 2 (Node 1 Leaf Leaf) (Node 3 Leaf Leaf)
// Start = atree1

atree2 :: Tree Int
atree2 = Node 4 (Node 2 (Node 1 Leaf Leaf) (Node 3 Leaf Leaf)) Leaf
// Start = atree2


// a. Inorder: Left, Root, Right
inorder :: (Tree a) -> [a] 
inorder Leaf = []
inorder (Node x le ri) = inorder le ++ [x] ++ inorder ri

// Start = inorder atree1
// inorder: []++[1]++[]++[2]++[]++[3]++[] = [1,2,3]
// Start = inorder atree2
// inorder: []++[1]++[]++[2]++[]++[3]++[]++[4]++[] = [1,2,3,4]
// Start = inorder Tree3


// b. Preorder: Root, Left, Right
preorder :: (Tree a) -> [a] 
preorder Leaf = []
preorder (Node x le ri) = [x] ++ preorder le ++  preorder ri

//Start = preorder atree1
// preorder: [2]++[1]++[]++[]++[3]++[]++[] = [2,1,3]
//Start = preorder Tree2


// c. Postorder: Left, Right, Root
postorder :: (Tree a) -> [a] 
postorder Leaf = []
postorder (Node x le ri) = postorder le ++  postorder ri ++ [x]

//Start = postorder atree1
// postorder: []++[]++[1]++[]++[]++[3]++[2] = [1,3,2]
//Start = postorder Tree2



// 4. Given a (Tree Int), and a list of integers.
// Check if every element from the list is in the tree.

task1 :: (Tree Int) [Int] -> Bool
task1 x y = and [ isMember a z \\ a <- y] 
    where z = (inorder x) // z = sort (inorder x)

//Start = task1 Tree2 [1..4] // True
//Start = task1 Tree2 [1..10]// False
//Start = task1 Tree3 [1..10] // False



// 5. Given a (Tree Int) and an integer, 
// write a function which counts how many times
// the given number occurs in the tree.

Tree3fiveTimes :: Tree Int
Tree3fiveTimes = Node 3 (Node 3 Leaf (Node 3 Leaf (Node 2 Leaf Leaf))) (Node 3 (Node 3 Leaf Leaf) (Node 7 Leaf Leaf))
//Start = Tree3fiveTimes 

task2 :: (Tree Int) Int-> Int
task2 x y = sum [1 \\ a <- (inorder x) | a==y]

task21 :: (Tree Int) Int-> Int
task21 Leaf y = 0
task21 (Node x le ri) y
| x==y = 1 + task21 le y + task21 ri y
= task21 le y + task21 ri y

//Start = task21 Tree3fiveTimes 3 // 5
//Start = task21 Tree2 (-10) // 0



// 6. Given a (Tree Int), write a function which gives back a list of triple tuples,
// where each tuple contains the value of the node, the left and the rigth child 
// of only the odd numbers from the tree in preorder traversal
// Leaf is considered to have value of -1.

task3 :: (Tree Int) -> [(Int,Int,Int)]
task3 Leaf = []
task3 (Node x le ri)
| isOdd x = [(x,extractN le, extractN ri)] ++ task3 le ++ task3 ri
= task3 le ++ task3 ri

extractN :: (Tree Int) -> Int
extractN Leaf = -1
extractN (Node x le ri) = x


// Start = task3 Tree2 // [(1,3,4),(3,-1,-1),(5,-1,-1)]
//Start = task3 Tree3 // [(1,3,-1),(3,-1,8)]



// 7. Given a (Tree Int) and an integer, write a function which
// searches the value in the tree. 

//Sol 1 
// check :: (Tree Int) Int -> Int
// check Leaf y = 0
// check (Node x le ri) y 
// | x == y = 1 + check le y + check ri y
// = check le y + check ri y

// searchT :: (Tree Int) Int -> Bool
// searchT x  y 
// | (check x y) == 0 = False
// = True 

//Sol 2
searchT :: (Tree Int) Int -> Bool 
searchT x y 
| isMember y (postorder x) = True
= False


// Start = searchT Tree2 10 // False
// Start = searchT Tree2 1 // True

// 11. Given a tree and an integer n, find the nodes equal to n and 
// replace by 0.

:: Tree a = Node a (Tree a) (Tree a) 
          | Leaf

replace :: Int (Tree Int) -> (Tree Int) 
replace y Leaf = Leaf
replace y (Node x le ri)
| x == y = (Node 0 (replace y le) (replace y ri))
= Node x (replace y le) (replace y ri)
 

atree = Node 4 (Node 3 (Node 1 Leaf Leaf)(Node 3 Leaf Leaf)) (Node 6 (Node 3 Leaf Leaf)(Node 7 Leaf Leaf))


// Start = replace 3 atree  
//(Node 4 (Node 0 (Node 1 Leaf Leaf) (Node 0 Leaf Leaf)) (Node 6 (Node 0 Leaf Leaf) (Node 7 Leaf Leaf)))



// 12. Add "_over18" to the name of persons that are over age of 18 in a tree of persons. 

:: Person = { name::String
			, birthday::(Int,Int,Int)
	        }

t1::Tree Person
t1 = Node {name = "hh", birthday = (2001,11,22)} Leaf Leaf
t2::Tree Person
t2 = Node {name = "hh", birthday = (2005,11,22)} (Node {name = "hr", birthday = (2001,11,21)} Leaf Leaf)(Node {name = "ht", birthday = (2001,11,23)} Leaf Leaf)
t3::Tree Person
t3 = Node {name = "hh", birthday = (1999,11,22)} (Node {name = "hr", birthday = (2001,11,21)} (Node {name = "hh", birthday = (2003,11,22)} Leaf Leaf) (Node {name = "hh", birthday = (1998,11,22)} Leaf Leaf))(Node {name = "ht", birthday = (2005,11,23)} Leaf Leaf)

// Start = t1
//Start = t2
//Start = t3


over18 :: (Int,Int,Int) -> Bool
over18 (a,b,c) 
| a >= 2004 = False
= True

addString :: Person -> Person
addString a = {a & name = a.name +++ "_over18"}

// Start = ((extractNode t2).name) +++ "_over18"
// Start = addString {name = "hh", birthday = (2001,11,22)}

updateName :: (Tree Person) -> (Tree Person)
updateName Leaf = Leaf
updateName (Node x le ri) 
| over18 (x.birthday) = (Node (addString x) (updateName le) (updateName ri))
= Node x (updateName le) ( updateName ri)

// Start = updateName t2 
//(Node (Person "hh" (2005,11,22)) 
//(Node (Person "hr_over18" (2001,11,21)) Leaf Leaf) 
//(Node (Person "ht_over18" (2001,11,23)) Leaf Leaf))

// Start = updateName t3 
//(Node (Person "hh_over18" (1999,11,22)) 
//(Node (Person "hr_over18" (2001,11,21)) 
//(Node (Person "hh_over18" (2003,11,22)) Leaf Leaf) 
//(Node (Person "hh_over18" (1998,11,22)) Leaf Leaf)) 
//(Node (Person "ht" (2005,11,23)) Leaf Leaf))



// 13. You are given a binary tree.
// Check if it is a binary search tree (BST).
// In BST values in left subtree should be 
// less then the current node's value and 
// values in right subtree should be greater.

:: BST a = BSTNode a (BST a) (BST a) | BSTLeaf

isBST :: (BST Int) -> Bool
isBST  BSTLeaf = BSTLeaf 
isBST (BSTNode x le ri) 
// | x 

// For testing.
bst1 = (BSTNode 1 BSTLeaf (BSTNode 20 (BSTNode 3 (BSTNode 3 BSTLeaf BSTLeaf) (BSTNode 4 BSTLeaf (BSTNode 12 (BSTNode 5 BSTLeaf BSTLeaf) BSTLeaf))) (BSTNode 45 (BSTNode 34 (BSTNode 22 BSTLeaf BSTLeaf) BSTLeaf) (BSTNode 112 (BSTNode 53 BSTLeaf BSTLeaf) BSTLeaf))))
bst2 = (BSTNode 1 BSTLeaf (BSTNode 20 (BSTNode 7 BSTLeaf (BSTNode 12 (BSTNode 12 (BSTNode 9 BSTLeaf BSTLeaf) BSTLeaf) BSTLeaf)) BSTLeaf))
bst3 = (BSTNode 1 BSTLeaf (BSTNode 20 (BSTNode 3 (BSTNode 9 BSTLeaf BSTLeaf) (BSTNode 4 BSTLeaf (BSTNode 1 (BSTNode 8 BSTLeaf BSTLeaf) BSTLeaf))) (BSTNode 45 (BSTNode 34 (BSTNode 22 BSTLeaf BSTLeaf) BSTLeaf) (BSTNode 112 (BSTNode 53 BSTLeaf BSTLeaf) BSTLeaf))))
bst4 = (BSTNode 1 BSTLeaf (BSTNode 2 (BSTNode 7 BSTLeaf (BSTNode 12 (BSTNode 12 (BSTNode 8 BSTLeaf BSTLeaf) BSTLeaf) BSTLeaf)) BSTLeaf))

//Start = map isBST [bst1,bst2,bst3,bst4,BSTLeaf] // [True,True,False,False,True]


