namespace lab4;
class Programm
{
    static void Main(string[] args)
    {
        Programm1();
        //Programm3();
        //2 different ways to declaring array size:
        //First
        //string[] programmingLangs = new string[3];
        //programmingLangs[0] = "Erlang";
        //programmingLangs[1] = "c++";
        //programmingLangs[2] = "Javascript";
        //Second
        //string[] programmingLangs2 = { "Erlang", "c++", "Javascript" };
        //for (int i = 0; i < programmingLangs.Length; i++)
        //{
        //    Console.WriteLine($"The value for element number {i+1} : {programmingLangs[i],3}");
        //}

        //Two diminsion Array
        //int[,] nums = { { 2, 4, 5, 1 }, { 2, 4, 5, 2 },{ 5,6,7,7} };
        //Console.WriteLine(nums[2,1]);
        //for(int i = 0; i < nums.GetLength(0); i++)
        //{
        //    for(int j=0; j < nums.GetLength(1); j++)
        //    {
        //        Console.Write($"{nums[i,j],2}");
        //    }
        //    Console.WriteLine("\n");
        //}

        //Jagged Array
        //int[][] nums = new int[3][];
        //nums[0] = new int[3] { 1, 2, 3 };
        //nums[1] = new int[1] { 1 };
        //nums[2] = new int[10] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
        //for(int i = 0; i < nums.Length; i++)
        //{
        //    for(int j = 0; j < nums[i].Length; j++)
        //    {
        //        Console.Write($"{nums[i][j],3}");
        //    }
        //    Console.WriteLine("\n");
        //}


    }


    static void Programm1()
    {
        //int n;
        Console.WriteLine("enter your value: ");
        //n = Convert.ToInt32(Console.ReadLine());
        string value = Console.ReadLine();
        string[] months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
        //Console.WriteLine(months[n - 1]);
        for(int i = 0; i < months.Length; i++)
        {
            if(value == months[i])
            {
                Console.WriteLine($"{i + 1}");
                return;
            }
        }
    }
    //static void Programm2()
    //{
    //}

    static void Programm3()
    {
        String x;
        x = Console.ReadLine();
     
        for(int i = x.Length-1; i >= 0; i--) Console.Write(x[i]);
        Console.WriteLine();
        for(int i = 0; i < x.Length; i++)
        {
            if (i % 2 != 0)
            {
                Console.Write(x[i]);
            }
        }
        Console.WriteLine();

        for(int i=0; i < x.Length; i++)
        {
            if (x[i] != 'a' && x[i] != 'e' && x[i] != 'i' && x[i] != 'o' && x[i] != 'u') Console.Write(x[i]);
        }
        Console.Write("\n");


    }

}


