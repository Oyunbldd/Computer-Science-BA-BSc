module PT6
import StdEnv

/*
You are given an array of Persons, check if they have birthday today increment their age with 1. Your output
should be same, array of Persons with updated ages.
*/

:: Date = {month::Int, day::Int}
:: Person = {name::String, age::Int, birthday::Date}


Evan :: Person
Evan = {name = "Evan", age = 1, birthday = {month = 11, day = 24}}
Hossam :: Person
Hossam = {name = "Hossam", age = 69, birthday = {month = 11, day = 24}}
Tringa :: Person
Tringa = {name = "Tringa", age = 13, birthday = {month = 11, day = 24}}



updated :: Person -> Person
updated p ={p & age =(p.age+1)}


check :: Person -> Person
check lst 
| lst.birthday.month == 11 && lst.birthday.day == 24 = updated lst
= lst


updateAge :: {Person} -> {Person}
updateAge lst = { check x \\ x <-: lst}

Start = updateAge {Evan, Hossam, Tringa}