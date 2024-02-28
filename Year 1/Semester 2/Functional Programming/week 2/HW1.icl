module HW1
import StdEnv

/*
Please write your NEPTUN code here:DDJIJZ

Your submission should not have any errors when running the code.
You'll receive a total of 100 points when you successfully solve both problems,
with 50 points awarded for each.

You should not delete anything from the given code, given test cases should stay the same, but you can add 
your tests as well. Don't change the given function signatures. 

Make sure that you comment all 'Start'-s before submitting the code.
*/

/*
Task 1:

Help the poor Ammar find if the three given lines can form a triangle.

If the lines don't form a triangle return "Invalid Triangle";
If the lines do form a triangle then find it's type and return it:
    "Equilateral" -> all the sides are of equal length
    "Isosceles" -> only two of the sides are equal
    "Scalene" -> no sides are of the same length

You can assume that the given lines have positive lenth.
*/

determine_triangle:: Int Int Int -> String
determine_triangle x y z  
| x + y <= z || y + z <= x || x + z <= y =  abort "Invalid Triangle\n" 
| x == y && y == z = "Equilateral"
| x == y || y == z || x == z = "Isosceles"
= "Scalene" 


// Start = determine_triangle 3 3 3 // "Equilateral"
// Start = determine_triangle 16 12 13 // "Scalene"
// Start = determine_triangle 20 5 20 // "Isosceles"
// Start = determine_triangle 1000 1000 5 // "Isosceles"
// Start = determine_triangle 130 150 140 // "Scalene"
// Start = determine_triangle 3 3 100 // "Invalid Triangle"
// Start = determine_triangle 100 5 1 // "Invalid Triangle"
// Start = determine_triangle 5 100 2 // "Invalid Triangle"

/*
Task 2:

To ensure the integral structure of a bridge, engineers use beams for support.

A bridge has a certain number of beams of the same width and the
distances between the beams are the same.

You are given the number of beams, their width and the distance 
between them. Calculate the length of the bridge.

Be careful to check for wrong input (the inputs cannot be negative or zero)
If the input is wrong, abort the funtion with the text "wrong input"
*/

bridge_length :: Int Int Int -> Int
bridge_length x y z 
| x <= 0  || y <= 0 || z <= 0= abort ("wrong input\n")
= (x * y) + (x - 1) * z

// Start = bridge_length 2 10 20 // 40
// Start = bridge_length 5 15 25 // 175
// Start = bridge_length 3 13 24 // 87 
// Start = bridge_length 5 0 25 // "wrong input"
// Start = bridge_length -1 15 25 // "wrong input"