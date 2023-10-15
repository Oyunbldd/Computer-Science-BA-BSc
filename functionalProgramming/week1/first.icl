module first

import StdEnv

//Start = 42


f :: Int -> Int

f x = x*2 


//Start = f 42

//Start = f 100





f3 :: Int -> Int

f3 x = x*3

//Start = f3 5







g :: Int -> Int

g x = x / 2

//Start = g 5  // 2


gr :: Real -> Real

gr x = x / 2.0

//Start = gr 5.0  // 2.5






h :: Int Int -> Int

h a b = a + b

//Start = h 4 5

//Start = h 5 66666666




h3 :: Int Int Int -> Int

h3 x y z = x + 2*y*z

//Start = h3 1 2 3 //13






h3y :: Real Real Real -> Int

h3y x y z = toInt (x + 2.0*y*z)

//Start = h3y 1.0 2.0 3.3 //14




b :: Bool -> Bool
b x = not x

//Start = b True


b2 :: Bool -> Bool
b2 x = not (not x)

//Start = b2 False





st :: String String String -> String
st a b c = a +++ b +++ c

//Start = st "Hello" " World!" " form FP class"


c :: Char -> Char
c x = x

//Start = c '%'


//Start = abs -4  // built-in


div :: Int -> Int
div x = x/2

divr :: Real -> Real
divr x = x/2.0

//Start = (div 5, divr 5.0, div 10, divr 10.0)


divb :: Int Int -> Int
divb x y = x/y

//Start = divb 5 3

divbr :: Int Int -> Real
divbr x y = (toReal x)/(toReal y)

//Start = divbr 5 3


divbr2 :: Int Int -> Real
divbr2 x y = toReal (x / y)

//Start = divbr2 5 3


iseven :: Int -> Bool
iseven a = (a rem 2 == 0)

//Start = iseven 23  // isEven 


iseven2 :: Int -> Bool
iseven2 a = (a/2)*2 == a

//Start = iseven2 23






// granma market 5 kg apple (500.0) , 7 kg orange (800.0 )
// 10 kg potatos 150.5 . Shopping =?

granma :: Real Real Real -> Real
granma a o p = a*500.0 + o*800.0 + p*150.5

//Start = granma 5.0 7.0 10.0 


// x^2 +2x + 1     x = 5??
eq :: Int -> Int
eq x = x^2 + 2*x + 1  // ^ caret

//Start = eq 5


// quadratic of a number n=4
qa :: Int Int -> Int
qa x n = x^n  // x*x*x*x...*x

//Start = qa 2 6


// Solve a quadratic eq. Given the coeficients find the velue in a given x.

quad :: Real Real Real Real -> Real

quad a b c x = a*x*x + b*x + c

//Start = quad 1.0 2.0 1.0 3.0


// Me 8848 K2 8611 flight Me 1000km 
// ? how far K2

ME = 8848
K2 = 8611

dist :: Int -> Int
dist x = (ME-K2) + x

//Start = dist 1000


// eq x = x^4 + 3*x^3 + 4*x^2 +x - 10  eq x = 10?
eq4 :: Int -> Int
eq4 x = x^4 + 3*x^3 + 4*x^2 +x - 10 

//Start = eq4 10 


// Apple Monday 200 ft, every day +10%  Apple ? on Sunday
// 200 + 20 + 22 + 24.2 + 26.62 + 29.28 + 32.21 = 354.31

price :: Real Real -> Real
price x y = x*(1.1)^y

 
Start = price 200.0 6.0