module first
import StdEnv

:: Person = {name :: String , gender :: Gender}
:: Gender = Male | Female | AttackHelicopter

Evan :: Person
Evan = {name="Evan" , gender = Male}
Tringa :: Person 
Tringa = {name = "Tringa" , gender = Female}

// Start= Evan
isMale :: Person -> Bool
isMale x = x.gender == Male 

instance == Gender 
where
    (==) Male Male = True 
    (==) Female Female = True
    (==) AttackHelicopter AttackHelicopter = True 
    (==) AttackHelicopter _ = True 
    (==) _ AttackHelicopter = True
    (==)  _ _ = False

// Start = isMale Evan


instance toString Gender 
where
    toString Male = "Male"
    toString Female = "Female"
    toString AttackHelicopter = "AttackHelicopter"

// Start = "Evan is " +++ toString Evan.gender

instance toInt Gender
where
    toInt Male = 1 
    toInt Female = 2
    toInt AttackHelicopter = 9000

//  Start = toInt Evan.gender

:: X someType otherType = A | B (someType,someType,someType) | C (someType,otherType )| D [someType]

test1 :: (X Int Int)
test1 = D [1,2,3,4,5]

// Start = test1


:: ReturnStatus = Ok (String, Bool, (Int,Int,Int,Int)) | NOK 
:: Router = {name :: String , onlineStatus :: Bool , ipAddress ::(Int,Int,Int,Int), status :: ReturnStatus}

r1 :: Router 
r1 = {name="r1", onlineStatus = True, ipAddress ={10,0,0,1} , status =(Ok (r.1.name, r1.onlineStatus,r1.ipAddress))}