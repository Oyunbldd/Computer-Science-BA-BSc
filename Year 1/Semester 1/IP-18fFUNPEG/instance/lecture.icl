module lecture
import StdEnv

instance + String
where  
    (+) s1 s2 = s1 +++ s2

// Start = "Hello " + "World" // "Hello World"

instance + (a,b) | + a & + b
where
    (+) (x1,y1) (x2,y2) = (x1+x2, y1+y2)

// Start = (1,2) + (3,4)

instance = (a,b) | Eq a & Eq b 
instance = (a,b,c) | Eq a & Eq b & Eq c 
