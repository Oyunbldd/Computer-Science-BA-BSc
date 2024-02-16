module problem
import StdEnv

/*
You are given an array of Persons, check if they have birthday today increment their age with 1. Your output
should be same, array of Persons with updated ages.
*/

// :: Date = {month::Int, day::Int}
// :: Person = {name::String, age::Int, birthday::Date}


// Evan :: Person
// Evan = {name = "Evan", age = 1, birthday = {month = 11, day = 24}}
// Hossam :: Person
// Hossam = {name = "Hossam", age = 69, birthday = {month = 11, day = 24}}
// Tringa :: Person
// Tringa = {name = "Tringa", age = 13, birthday = {month = 11, day = 24}}


// today :: Date 
// today = {month = 11,day = 24}

// helper :: Person -> Person
// helper p 
// | p.birthday.month == today.month && p.birthday.day == today.day = {p & age = (p.age + 1)}
// = p


// updateAge :: {Person} -> {Person}
// updateAge p  = {x \\ x <-: p}

// Start = updateAge {Evan, Hossam, Tringa}



:: StudyLevel = BSc | MSc | PhD
:: Student = { id :: String , level :: StudyLevel , grades::[Int]}

instance == StudyLevel 
where
 (==) BSc BSc = True
 (==) _ _ = False

// 1.----------------------------
/* Record Student. (10 points)
*
* Create an Algebraic type `StudyLevel` which can have
* 3 values: `BSc`, `MSc`, `PhD`.
* Create a record `Student` which has 3 fields:
* * id - A string id
* * level - A study level with type `StudyLevel`
* * grades - A list of grades, where each grade is an integer
* Write a `getBestBScStudent` function that takes a list of students
* and returns a string ID of the student who has highest average grade
* among BSc students. Assume that the list contains at least one BSc student.
* If multiple students have same maximum average return any of their IDs.
*/


st1 = {id="st-1", level=BSc, grades=[3,4,3]}
st2 = {id="st-2", level=MSc, grades=[3,1,3]}
st3 = {id="st-3", level=PhD, grades=[5]}
st4 = {id="st-4", level=BSc, grades=[5,5,4]}
st5 = {id="st-5", level=BSc, grades=[5,5,5,2,4]}


// realAverage :: [Int] -> Real
// realAverage lst = toReal (sum lst) / toReal (length lst)


findHighestAverage :: [[Int]] -> Int
findHighestAverage lst = maxList (map(\x = avg x) lst)


helper :: [Student] -> String
helper lst = hd [x.id \\ x <- lst | avg x.grades == check ]

where check = findHighestAverage (map(\x =x.grades) lst)


getBestBScStudent :: [Student] -> String
getBestBScStudent [] = abort "ERROR" 
getBestBScStudent lst = helper [x \\ x <- lst | x.level == BSc]



// Start = getBestBScStudent [st1] // "st-1"
// Start = getBestBScStudent [st1, st4, st5] // "st-4"
// Start = getBestBScStudent [st2, st3, st5] // "st-5"
// Start = getBestBScStudent [st1, st2, st3, st4, st5] // "st-4"
// Start = getBestBScStudent [] // "ERROR"





// 6.----------------------------
/* Fake Accounts. (10 points)
*
* Given an array of BasicPersonAccount, ban the fake accounts
* (remove them from the array, only the first original should remain),
* and dequeue the original accounts of the fakes
* (inQueue should be set to False if they had fakes).
* To find a fake account, check the names and ips of the accounts.
* i.e: fakePer1 is a fake account of per1 since both of them have
* the same name and ip and but they are different in age,
* while posssibleFake is not a fake account of per3.
*/

:: BasicPersonAccount = {name:: String, age::Int, inQueue::Bool, ip::Int}

per1 :: BasicPersonAccount
per1 = {name = "A", age=45, inQueue=True, ip = 100025 }

per2 :: BasicPersonAccount
per2 = {name = "B", age=22, inQueue=True, ip = 755542}

per3 :: BasicPersonAccount
per3 = {name = "C", age=18, inQueue=True, ip = 155200}

fakePer1 :: BasicPersonAccount
fakePer1 = {name = "A", age=12, inQueue=True, ip = 100025}

posssibleFake :: BasicPersonAccount
posssibleFake = {name = "C", age=18, inQueue=True, ip = 12205}

//findFakes :: {BasicPersonAccount} -> {BasicPersonAccount}

//Start = findFakes {per1, fakePer1, per2, per3, fakePer1, posssibleFake}
//{(BasicPersonAccount "A" 45 False 100025),(BasicPersonAccount "B" 22 True 755542),(BasicPersonAccount "C" 18 True 155200),(BasicPersonAccount "C" 18 True 12205)}
//Start = findFakes {per1, per1, per1} // {(BasicPersonAccount "A" 45 True 100025)}
//Start = findFakes {per3, posssibleFake} // {(BasicPersonAccount "C" 18 True 155200),(BasicPersonAccount "C" 18 True 12205)}
//Start = findFakes {} // {}