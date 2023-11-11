

gcd(){
if [ $2 -ne 0 ]
   then 
     echo $1
   else
   gcd $2 $(($1 % $2))
fi
}
ans="$(gcd $1 $2)"
echo $ans
