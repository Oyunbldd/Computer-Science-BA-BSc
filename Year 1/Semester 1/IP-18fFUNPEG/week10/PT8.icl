module PT8
import StdEnv

//Write your name and neptune code here: < Oyunbold  ,  djijz >

/*---------------------------------- TASK: --------------------------------------

Given a binary tree that contains only 0s and 1s, remove every subtree that does not contain
node with value 1.

example:
     
     INPUT:
		1
	  /   \
	 0     1
	/ \     \
   1   0     0
  /   /     / \
 0 	 0     0   0
 
 
     OUTPUT:
		1
	  /   \
	 0     1
	/      
   1         
            

*/

:: Tree a = Node a (Tree a) (Tree a) | Leaf
tree1 = (Node 1 (Node 0 (Node 0 Leaf Leaf) (Node 0 Leaf Leaf))(Node 1 (Node 0 Leaf Leaf) (Node 1 Leaf Leaf)))
tree2 = (Node 0 (Node 0 (Node 1 Leaf Leaf) (Node 0 Leaf Leaf))(Node 0 (Node 0 Leaf Leaf) (Node 0 Leaf Leaf)))
tree3 = (Node 1 (Node 0 (Node 0 Leaf Leaf) (Node 1 Leaf Leaf)) Leaf)






// removeSubtree :: (Tree Int) -> (Tree Int)
// removeSubtree Leaf = 0
// removeSubtree (Node a l r) 
// | l ==0 || r == 0 = 
// = Node l r 

// Start = removeSubtree (Leaf) // Leaf
// Start = removeSubtree tree1 // (Node 1 Leaf (Node 1 Leaf (Node 1 Leaf Leaf)))
// Start = removeSubtree tree2 // (Node 0 (Node 0 (Node 1 Leaf Leaf) Leaf) Leaf
// Start = removeSubtree tree3 // (Node 1 (Node 0 Leaf (Node 1 Leaf Leaf))Leaf)









