module lecture
import StdEnv

:: Person = {name :: String
            ,birthdate :: (Int,Int,Int)
            ,fpprogramer :: Bool
            }


IsfpUser :: Person -> String
IsfpUser {fpprogramer = True} = "Yes"
IsfpUser _                    = "No"

// Start = IsfpUser {name = "Me" , birthdate = (1,1,1999), fpprogramer = True}

GetName :: Person -> String
GetName p = p.name

GetName2 :: Person -> String
GetName2 {name} = name

ChangeN :: Person String -> Person
ChangeN p s = {p & name = s}  // short form of changing records value !

// Start = ChangeN {name="XY", birthdate=(1,1,2000), fpprogramer = True} "Alex"

// -----------------
:: Point = { x:: Real , y :: Real , visible :: Bool}

:: Vector = {dx :: Real, dy::Real}

Origo :: Point

Origo = {x = 0.0, y= 0.0, visible = True}

Dist :: Vector 
Dist = {dx= 1.0 , dy = 2.0}

IsVisible :: Point -> Bool 
IsVisible {visible = True} = True 
IsVisible _                = False 

xcoordinate :: Point -> Real
xcoordinate p = p.x

hide :: Point -> Point 
hide p = { p & visible = False}

Move :: Point Vector -> Point
Move p v = { p & x = p.x + v.dx , y= p.y + v.dy}

// Start = Move (hide Origo) Dist
// -----------------------------------

// :: Q = {nom ::Int , den ::Int}
// QZero = {nom = 0 , den = 1}
// QOne = { nom = 1 , den = 1}

// simplify {nom = n , den = d}
//     | d =0 = abort  "detnominator is 0"
//     | d < 0 = {nom = ~n/g , den= ~d/g }
//     | otherwise = {nom= n/g , den = d/g}
//     where g = gcdm n d

// gcdm x y = gcdnat (abs x) (abs y)
//   where gcdnat x 0 = x    