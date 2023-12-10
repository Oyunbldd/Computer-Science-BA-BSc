module lecture7
import StdEnv


:: Person = { 
    name :: String
    ,birthday :: (Int,Int,Int)
    ,fpprogramer :: Bool
}



ChangeN :: Person String -> Person
ChangeN p s = {name = "XY",birthday=(1,1,2000),fpprogramer = True} "Alex"