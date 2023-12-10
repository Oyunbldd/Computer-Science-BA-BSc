module PT7
import StdEnv


//Write your name and nep code here: <  Oyunbold, DDJIJZ  >

//Remember plagiarism is zero for both! 


//TASK:
/*
Given an array of lists of Ints and an Int, keep the lists whose difference between max and min element is 
less than the given number
There are no [] in the array
*/


minMaxDiff :: {[Int]} Int->{[Int]}
minMaxDiff arr n = {x \\ x <-: arr | abs((maxList x) - (minList x)) < n}


// Start = minMaxDiff {[1,21,2],[1,1,1,1,1],[1]} 5//{[1,1,1,1,1],[1]}
// Start = minMaxDiff {[1,21],[1..10],[4,3]} 5//{[4,3]}
// Start = minMaxDiff {[1..10],[5..345]} -3//{}



