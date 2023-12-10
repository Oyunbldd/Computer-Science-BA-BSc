module ex8
import StdEnv

//---------------------------------Algebraic datatypes-----------------------------------------

:: Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun

IsWeekend :: Day -> Bool
IsWeekend Sat = True
IsWeekend Sun = True
IsWeekend _ = False

:: Grade = A | B | C | D | E | FAIL

//Start = IsWeekend Tue


//--------------------------------------RECORDS------------------------------------------------

//// Records - from lecture slides

:: Person = { name :: String
            , birthdate :: (Int,Int,Int)
            , fpprogramer :: Bool
            }

// pattern matching mechanism can be used to select one or
// more record elements. The nice thing about this feature is that one only needs to name the
//fields one is interestexd in

IsfpUser :: Person -> String
IsfpUser {fpprogramer = True} = "Yes"
IsfpUser _                    = "No"

//Start = IsfpUser { name = "Me"
  //               , birthdate = (1,1,1999)
  //               , fpprogramer = True}    // "Yes"

:: Q = { nom :: Int
       , den :: Int
       } 

//We defined type Q and now we create records of that type 
       
QZero :: Q       
QZero = { nom = 0, den = 1 }    
QOne :: Q
QOne = { nom = 1, den = 1 }

//simplify 4/8 --> 1/2

simplify :: Q -> Q
simplify {nom=n,den=d}
  | d == 0 = abort " denominator is 0"
  | d < 0  = { nom = ~n/g, den = ~d/g}
  | otherwise =  { nom = n/g, den = d/g}
  where g = gcd n d

mkQ :: Int Int -> Q
mkQ n d = simplify { nom = n, den = d } 

//Start = mkQ 81 90

//definition of fractions + related functions + test fractions

fraction1 = {nom=2,den=4}
fraction2 = {nom=0,den=12}
fraction3 = {nom=2,den=5}
fraction4 = {nom=12, den=8}
fraction5 = {nom=9, den=0}
fraction6 = {nom=13, den=13}
fraction7 = {nom=6, den=15}

realValue :: Q -> Real
realValue {nom,den}
| nom==0 = abort "You divided by zero, the universe just exploded."
= (toReal nom) / (toReal den)

// Find the cube of a fraction represented as an element of type Q.

func1 :: Q -> Q
func1 {nom,den}
| den==0 = abort "You divided by zero, the universe just exploded."
= simplify { nom = (nom^3), den = (den^3) }

//Start = func1 fraction5
//Start = func1 fraction4

// Define minQ for finding the maximum of two rational numbers. Use realValue function

minQ :: Q Q -> Q
minQ a b 
| realValue a > realValue b = simplify b 
= simplify a



//Start = minQ fraction7 fraction1

// Write a function to test the equality of rational numbers.

IsEqual :: Q Q -> Bool
IsEqual a b 
| a.nom * b.den == a.den * b.nom = True
=False

//Start = mkQ 81 90
//Start = IsEqual (mkQ 81 90) (mkQ 9 10)
//Start = IsEqual { nom = 10, den = 10 } QOne
//Start = IsEqual { nom = 1, den = 2 } { nom = 10, den = 101 }

//combine algebraic types with other types:

:: Gender = Male | Female

:: Date = { day :: Int
 , month :: Int
 , year :: Int
 }

:: Employee = { name :: String
 , gender :: Gender
 , birthdate :: Date
 , cleanuser :: Bool
 }

// Given the University algebraic type of 3 university names
// and the Student record type of id, university and list of grades.
// Select from an array of students the ones that have more then n grades,
// and return a list of (id,uni) pairs of such students.


:: University = Elte | Corvinus | BME

:: Student={id::Int
           ,uni::University
           ,grades::[Int]}

//version1

helper :: Student Int -> Bool
helper str n = (length str.grades) > n 

moreThanNGrades :: {Student} Int -> [(Int,University)]
moreThanNGrades arr n = [(x.id, x.uni) \\ x <-: arr | helper x n]


//version2

//moreThanNGrades1 :: {Student} Int -> [(Int,University)]

arrSt = {{id=1,uni=Elte,grades=[]},{id=2,uni=BME,grades=[5,5,5]},{id=3,uni=Corvinus,grades=[5,5,5,5]}}

//Start :: {Student}
//Start = arrSt

//Start = moreThanNGrades arrSt 1

// Given a predefined Shape type, argument of the Circle constructor 
// is the radius, side length for Square, and equilateral Triangle, 
// width and height for Rectangle, write a function that calculates 
// the circumference area and circumference of each shape in the array, 
// store the results of each shape as a tuple like (area,circumference) 
// in an array.
//    			Circumference		Area
//    Circle			2*r*pi			r^2*pi		p=3.14
//    Square			4*a				a^2
//    Tiangle			3*a				sqrt(3)*a^2/4
//    Rectangle		2*a+2*b			a*b

:: Shape = Circle Real
        | Square Real
        | Triangle Real
        | Rectangle Real Real

cir :: Shape -> (Real, Real)
cir (Circle r) = (2.0*r*3.14,(r*r)*3.14)
cir (Square a) = (4.0*a,a*a)
cir (Triangle a) = (3.0*a,sqrt(3.0)*a^2.0/4.0)
cir (Rectangle a b) = (2.0*a+2.0*b,a*b)

calc :: {Shape} -> {(Real,Real)}
calc ar = {cir t \\ t<-: ar}

//Start = calc {(Circle 3.0), (Square 2.5)} 
// {(18.84,28.26),(10,6.25)}
//Start = calc {(Triangle 4.3), (Rectangle 5.4 7.2), (Circle 2.45)} 
// {(12.9,8.00640485798713),(25.2,38.88),(15.386,18.84785)}
//Start = calc {(Triangle 7.6), (Circle 1.75), (Square 0.95)} 
// {(22.8,25.0108136612946),(10.99,9.61625),(3.8,0.9025)}


// Given two Strings as parameters, remove all characters 
// of first string from the second one. Exampe: "z" "Pizza" -> "Pia"

//convertC :: [Char] -> String
//converc lst = {x \\ x<-lst}

//Start =convertC ['a','a','c']

helperR :: [Char] Char -> [Char]
helperR lst c = [x \\ x <- lst | x <> c]

//Start = helperR ['a','a','b','b'] 'a' 


removeFromFirst :: String String -> String
removeFromFirst st1 st2 = {x \\ x <-s1 | not (isMember x s2)}
where s1 = [c \\ c <-: st1]
      s2 = [c \\ c <-: st2]
//removeFromFirst arr1 arr2 = {x \\ x <-:arr1 , y<-:arr2 | x<>y}

//Start = removeFromFirst "Santa" "s"//"Santa"
//Start = removeFromFirst "Georgia is cool" ""//"Georgia is cool"
//Start = removeFromFirst "Give Me Bonus Points TEACHER!" " "//"GiveMeBonusPointsTEACHER!"
Start = removeFromFirst "jKKIr lKjojrve frKurnKKctjjjiKonrrrajl" "jKr"//"I love functional"
//Start = removeFromFirst "" ""// ""


:: Point = {  x       ::  Real
            , y       ::  Real
            , visible ::  Bool
            }

Origo :: Point
Origo = { x = 0.0
        , y = 0.0
        , visible = True
        }

// Test about 3 points if they can form a right-angled triangle.

IsTriangle :: Point Point Point -> Bool
IsTriangle p1 p2 p3 = a == (b + c) || b == (a + c) || c == (a + b)
where
  a = (p2.x-p1.x)*(p2.x-p1.x) + (p2.y-p1.y)*(p2.y-p1.y)
  b = (p3.x-p2.x)*(p3.x-p2.x) + (p3.y-p2.y)*(p3.y-p2.y)
  c = (p3.x-p1.x)*(p3.x-p1.x) + (p3.y-p1.y)*(p3.y-p1.y)

//Start = IsTriangle Origo {x = 0.0, y = 3.0, visible = True} {x = 2.0, y = 0.0, visible = True}












