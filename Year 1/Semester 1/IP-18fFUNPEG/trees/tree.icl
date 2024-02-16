module tree
import StdEnv


:: Tree a = Node a (Tree a ) (Tree a) | Leaf


Tree1 :: Tree Int
Tree1 = Node 7 Leaf Leaf

Tree2 :: Tree Int 
Tree2 = Node 0 (Node 1 (Node 3 Leaf Leaf) (Node 4 Leaf Leaf)) (Node 2 (Node 5 Leaf Leaf) (Node 6 Leaf Leaf))

Tree3 :: Tree Int
Tree3 = Node 0 (Node 1 (Node 3 Leaf (Node 8 Leaf Leaf)) Leaf) (Node 2 Leaf Leaf)


count3Nodes :: (Tree Int) -> Int
count3Nodes Leaf = 0
// count3Nodes (Node x le ri) = 1 + (count3Nodes le) + (count3Nodes ri)
count3Nodes (Node x le ri) 
| x == 0 = (count3Nodes le) + (count3Nodes ri)
| x rem 3 == 0 = 1 + (count3Nodes le) + (count3Nodes ri)
= (count3Nodes le) + (count3Nodes ri)

// Start= count3Nodes Tree2

evenNodeList :: (Tree Int) -> [Int]
evenNodeList Leaf = []
evenNodeList (Node x le ri)
| x rem 2 == 0 = [x] ++ evenNodeList le ++ evenNodeList ri
=  evenNodeList le ++ evenNodeList ri

// Start= evenNodeList Tree2

nNodes :: (Tree Int) -> Bool
nNodes Leaf = False
nNodes (Node x le ri ) 
| x > 10 = True 
= nNodes le ||  nNodes ri

// Start = nNodes Tree2

allNegative :: (Tree Int) -> Bool
allNegative Leaf = True 
allNegative (Node x le ri )
| x > 0 = False 
= allNegative le && allNegative ri 

// Start = allNegative (Node -1 (Node -9 Leaf Leaf) Leaf)


extractNodeInt :: (Tree Int) -> Int
extractNodeInt Leaf = 0 
extractNodeInt (Node x le ri) = x 

sumChild :: (Tree Int) -> Bool 
sumChild Leaf = True 
sumChild (Node x le ri ) = (x == extractNodeInt le + extractNodeInt ri)