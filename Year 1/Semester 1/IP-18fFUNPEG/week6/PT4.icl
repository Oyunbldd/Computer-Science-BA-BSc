module PT4
import StdEnv

//REMEMBER: PLAGIARISM IS 0!

//WRITE YOUR NAME AND NEPTUN CODE HERE: Oyunbold Ganbold DDJIJZ

//Task:
//Find the most frequent element in the list and output its frequency. NOTE: list can be of any type a!


helperFunction :: a [a] -> Int | == a
helperFunction k [] = 1
helperFunction k [x : xs] 
| k == x  =  1 + helperFunction k xs
= helperFunction k xs

// Start = helperFunction 'a' ['a','a','a']
// Start = helperFunction 1 [1..10]


countingValues :: [a] -> [Int]



[helperFunction x xs : calling function]




// maxFreq :: [a] -> Int | == a
// maxFreq [] = 0
// maxFreq [x : xs] 
// | helperFunction x xs 



Start = (~)[1..3]

//Start = maxFreq ['a', 'b', 'c', 'a', 'a']//3 --> most frequent element is 'a', frequency is 3
//Start = maxFreq [1, 1, 2, 2, 2, 2, 3, 4, 5, 5, 5]//4 --> most frequent element is 2, frequency is 4
//Start = maxFreq [True, False, False, False, True]//3 --> most frequent element is False, frequency is 3
//Start = maxFreq ["I", "will", "pass", "functional", "ha", "ha"]//2 --> most frequent element is "ha", frequency is 2
//Start = maxFreq [1.1, 2.2, 3.3, 3.3, 3.3, 3.3, 3.3]//5

