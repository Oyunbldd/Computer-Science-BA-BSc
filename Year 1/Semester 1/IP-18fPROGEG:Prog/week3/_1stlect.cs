namespace _1stlect
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Task : Linear movement v=s/t
            //First we should declaring variables
            double s, t;
            double v;

            //double -> type of data types

            //reading the input without checking the precondition
            Console.Write("s= ");
            s = Convert.ToDouble(Console.ReadLine());


            Console.Write("t= ")
     t = Convert.ToDouble(Console.ReadLine());

            //main process
            v = s / t;

            //Print out the result
            Console.WriteLine("The speed : {0}", v);



        }
    }
}