module PT9
import StdEnv

//Please write your name and neptun code here: <  Oyunbold , DDJIJZ  >

//REMEMBER PLAGIARISM IS 0!

:: Tree a = Node a (Tree a) (Tree a) 
          | Leaf
          
tree1 = Node 2 (Node 5 (Node 3 (Node 24 Leaf Leaf) Leaf) (Node 6 Leaf (Node 7 Leaf Leaf))) (Node 8 (Node 15 Leaf (Node 10 Leaf (Node 14 Leaf Leaf))) (Node 13 Leaf (Node 16 Leaf Leaf)))
tree2 = Node "abc" (Node "ghi" (Node "func" (Node "zyh" Leaf Leaf) Leaf) (Node "tional" Leaf (Node "haha" Leaf Leaf))) (Node "xyz" (Node "program" Leaf (Node "zyx" Leaf Leaf)) (Node "ming" Leaf (Node "cba" Leaf Leaf)))
treeOne = Node 10 (Node 8 (Node 4 (Node 3 Leaf Leaf) Leaf) (Node 7 Leaf Leaf)) (Node 7 (Node 6 Leaf Leaf) (Node 5 Leaf (Node 4 Leaf Leaf)))


/*
	Given a tree and write a function for level traversal.
	For example: 

					 10
				   /    \
				  8      7
				 / \    / \
				4   7  6   5
			   / \ / \/ \ / \
			  3   LL LL LL   4
			  
	Level traversal: [10,  8,7,  4,7,6,5,  3,4]
					(white space are just for simplicity to be readable)
	So firstly you put in the output list node value on level 0 - 10, then nodes on level 1 - 8,7 
	then nodes on level 2 - 4,7,6,5 and so on
			  
  	One helper function is given - levels. As you've seen on previous classes, this function is getting
  	the depth of the tree, meaning it returns integer representing the deepest level-s value.
  	
  	YOU NEED HELPER FUNCTION that will gather node values for one level and than you'll do it for every level.
  	
*/

levels :: (Tree a) -> Int
levels Leaf = 0
levels (Node x le ri) = 1 + (max (levels le) (levels ri))


getValue :: (Tree a) Int Int -> [a]
getValue Leaf _ _  = []
getValue (Node x le ri) i =  


// levelOrder:: (Tree a) -> [a]
// levelOrder Leaf = []
// levelOrder (Node x le ri) = 

//Start = levelOrder tree1   	// [2,5,8,3,6,15,13,24,7,10,16,14]
//Start = levelOrder tree2 		// ["abc","ghi","xyz","func","tional","program","ming","zyh","haha","zyx","cba"]
//Start = levelOrder treeOne	// [10,8,7,4,7,6,5,3,4]
//Start = levelOrder (Node 'o' Leaf Leaf) // ['o']
//Start = levelOrder Leaf			// []





