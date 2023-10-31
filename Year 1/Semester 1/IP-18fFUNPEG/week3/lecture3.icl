module lecture3
import StdEnv

test :: [a][a] -> Bool | == a
test [][] = True
test [][y : ys] = False
test [x : xs][] = False
test [x : xs][y : ys] = x == y && xs == ys

// Start = test [1..3][1..3]

map :: (a->b) [a] -> [b]
map f


