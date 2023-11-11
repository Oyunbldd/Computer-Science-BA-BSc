namespace lab3;
class Program
{


 static void Main(string[] args)
  {
        //pb1();
        //pb2();
        //pb3();
        //pb5();
        //pb6();
        pb7();
        //pb8();
        //pb9();
        //pb10();
    }


 static void pb1()
    {
        int n;
        Console.Write("Enter your value of n:");
        n = Convert.ToInt32(Console.ReadLine());
        int ans = 1;
        if (n == 1)
        {
            Console.WriteLine(1);
        }
        else
        {
            for (int i = 1; i <= n; i++)
            {
                ans *= i;
            }
            Console.WriteLine("answer is : {0}", ans);
        }
    }

 static void pb2()
    {
        int n;
        Console.Write("Enter your value of n:");
        n = Convert.ToInt32(Console.ReadLine());
        int ans = 0;
        for(int i = 1; i <= Math.Sqrt(n); i++)
        {
            if (n % i == 0)
            {
                ans += i;
                ans += n / i;
            }
        }

        Console.WriteLine("answer is : {0}", ans);

    }

    static void pb3()
    {
        int n;
        Console.Write("Enter your value of n:");
        n = Convert.ToInt32(Console.ReadLine());
        int ans = 0;
        for (int i = 1; i <= n; i+=2)
        {
            if (n % i == 0)
            {
                ans += i;
            }
        }

        Console.WriteLine("answer is : {0}", ans);

    }

    //static void pb4()
    //{
    //    int n;
    //    Console.Write("Enter your value of n: ");
    //    n = Convert.ToInt32(Console.ReadLine());

    //}
    //static void pb5()
    //{
    //    int n;
    //    Console.Write("Enter your value of n: ");
    //    n = Convert.ToInt32(Console.ReadLine());

    //}

    static void pb6()
    {
        int n;
        Console.Write("Enter your value of n:");
        n = Convert.ToInt32(Console.ReadLine());
        Console.Write("{0}",( n * (n + 1) )/ 2);
        //for (int i = 1; i <= n; i++)
        //{
        //    for(int j = 1; j <= i; j++)
        //    {
        //        //Console.Write("{0} ", j);
        //        //Console.Write({ i*j,4},)
        //    }
        //    //Console.WriteLine();
        //}
    }
    static void pb7()
    {
        int k;
        int count = 0;
        Console.Write("Enter your value of k:");
        k = Convert.ToInt32(Console.ReadLine());
        while (Math.Pow(count, 2) < k) count++;         
        Console.WriteLine("smallest power of 2 which is bigger than K is : {0}", count);
    }

    static void pb8()
    {
        int n;
        Console.Write("Enter your value of n:");
        n = Convert.ToInt32(Console.ReadLine());
        for(int i = 1; i <= n; i++)
        {
            Console.Write("*");
        }

    }
    static void pb9()
    {
        int w, l;
        Console.Write("Enter your value of w & l:");
        string input = Console.ReadLine();
        w = Convert.ToInt32(input.Split(' ')[0]);
        l = Convert.ToInt32(input.Split(' ')[1]);
        for(int i = 1; i <= l; i++)
        {
            for(int j = 1; j <= w; j++)
            {
                
                if(i==1 || i == w)
                {   
                    Console.Write("*");
                }
                else
                {
                    if(j==1 || j == w)
                    {
                       Console.Write("*");
                    }
                    else
                    {
                        Console.Write("{0}", " ");
                    }
                }
            }
            Console.WriteLine();
        }
    }
    static void pb10()
    {
        int h, w;
        Console.Write("Enter your value of h & w:");
        string input = Console.ReadLine();
        h = Convert.ToInt32(input.Split(' ')[0]);
        w = Convert.ToInt32(input.Split(' ')[1]);
        for(int i = 1; i <= h; i++)
        {
            for(int j = 1; j <= i; j++)
            {
                Console.Write("*");
            }
            Console.WriteLine();
        }
        Console.WriteLine();
        for (int i = 1; i <= h; i++)
        {
            for (int j = 1; j <= w; j++)
            {
                if (j >= w - i + 1)
                {
                    Console.Write("*");
                }
                else
                {
                    Console.Write("{0}", " ");
                } 
            }
            Console.WriteLine();
        }
        Console.WriteLine();
        int limit = (h * 2) - 1;
        for(int i=1; i <= h; i++)
        {
            for(int j = 1; j <= limit; j++)
            {
                if(i == 1 && j == w)
                {
                    Console.Write("*");
                }
                else
                {  
                   if(j >= limit % (i+1)  && i-1*2>=j)
                    {
                        if (i % 2 == 0 && j % 2 == 1) { Console.Write("*");
                        }
                        else
                        {
                           Console.Write("{0}", " ");
                        }

                        if (i % 2 == 1 && j % 2 == 0) {
                         Console.Write("*");
                        }
                        else
                        {
                            Console.Write("{0}", " ");
                        }

                    }
                    else
                    {
                        Console.Write("{0}", " ");
                    }
                }

            }
            Console.WriteLine();
        }
        Console.WriteLine();

    }
}


