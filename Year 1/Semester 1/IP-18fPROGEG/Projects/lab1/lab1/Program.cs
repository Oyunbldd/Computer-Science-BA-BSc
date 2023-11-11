namespace Lab1;
class Program
{
    static void Main(string[] args)
    {

        Programm9();

    }
    static void Programm1()
    {
        int l, m;
        Console.Write("Enter the length of the rectangle:  ");
        l = Convert.ToInt32(Console.ReadLine());
        Console.Write("Enter the width of the rectangle:  ");
        m = Convert.ToInt32(Console.ReadLine());
        Console.Write("The area of rectangle is (l x w) = ");
        Console.WriteLine(l * m);
        //Console.Write("The perimeter of rectangle is 2(l + w) = ");
        //Console.WriteLine(2 * (l + m));
        Console.WriteLine("The perimeter of rectangle is 2(l + w) = {0}", l * m);

    }
    static void Programm2()
    {
        int a, b;
        Console.Write("Enter a: ");
        a = Convert.ToInt32(Console.ReadLine());
        Console.Write("Enter b: ");
        b = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine($"({a}+{b})^2");
        Console.WriteLine($"= {a}^2+2*{a}*{b}+{b}^2");
        //Console.WriteLine($"= {a^2}+{2*a*b}+{b^2}");
        Console.WriteLine($"= {Math.Pow(a, 2)}+{2 * a * b}+{Math.Pow(b, 2)}");
        Console.WriteLine("= ", (a + b) ^ 2);
    }
    static void Programm3()
    {
        int a, b, c;
        Console.Write("Enter Length for Side 1: ");
        a = Convert.ToInt32(Console.ReadLine());
        Console.Write("Enter Length for Side 2: ");
        b = Convert.ToInt32(Console.ReadLine());
        Console.Write("Enter Length for Side 3: ");
        c = Convert.ToInt32(Console.ReadLine());


        if (Math.Pow(a, 2) + Math.Pow(b, 2) == Math.Pow(c, 2) || Math.Pow(b, 2) + Math.Pow(c, 2) == Math.Pow(a, 2) || Math.Pow(a, 2) + Math.Pow(c, 2) == Math.Pow(b, 2))
        {
            Console.WriteLine($"The given triangle is right angled triangle.");
        }
        else
        {
            Console.WriteLine($"The given triangle is  not right angled triangle.");
        }

    }
    static void Programm4()
    {
        float l, km, ans;
        //float ans;
        Console.Write("Amount of petrol consumed (liters): ");
        l = Convert.ToInt32(Console.ReadLine());
        Console.Write("Length of the trip (km): ");
        km = Convert.ToInt32(Console.ReadLine());
        ans= (l / km) * 100;
        Console.Write(" The consumption of the car is {0} (liters / 100km).", ans);

    }
    static void Programm5()
    {
        int n, k;
        Console.Write("Number of kids: ");
        n = Convert.ToInt32(Console.ReadLine());
        Console.Write("Number of apples: ");
        k = Convert.ToInt32(Console.ReadLine());
        Console.Write("Every kid gets {0} apples and there are {1} apples left.", k / n, k % n);

    }
    static void Programm6()
    {
        int a, b;
        Console.Write("Enter two integers: ");
        string input = Console.ReadLine();

        a = Convert.ToInt32(input.Split(' ')[0]);
        b = Convert.ToInt32(input.Split(' ')[1]);
        Console.WriteLine("The smaller number is {0}", a >= b ? b : a);

    }

    static void Programm7()
    {
        int n;
        //string t;
        //t = Console.ReadLine();
        //if (t.Length == 3) Console.WriteLine($"{t} is a 3-digit number");
        //else Console.WriteLine($"{t} is not a 3-digit number.");

        Console.Write("N:");
        n = Convert.ToInt32(Console.ReadLine());


        if (n == 100 ||  n%100 < 100 && n>100 && n<999)
        {
            Console.WriteLine($"{n} is a 3-digitf number.");
        }
        else
        {
            Console.WriteLine($"{n} is not a 3-digit number.");
        }

        
    }

    static void Programm8()
    {
        int num1, num2;
        Console.Write("Enter two numbers: ");
        string input = Console.ReadLine();
        num1 = Convert.ToInt32(input.Split(" ")[0]);
        num2 = Convert.ToInt32(input.Split(" ")[1]);
        
        
        if(num1%2==1 || num2 % 2 == 1)
        {
            Console.WriteLine(" Yes, there is an odd one.");
        }
        else
        {
            Console.WriteLine("None of them is odd.");
        }

    }

    static void Programm9()
    { 
        Console.Write("Enter three words: ");
        String input = Console.ReadLine();
        int j = 0;
        for(int i=0;i<input.Split(" ").Length; i++)
        {
            if (input.Split(" ")[j].Length < input.Split(" ")[i].Length) {
                j = i;
            }
        }

        Console.WriteLine("The longest word is {0}", input.Split(' ')[j]);

    }





    static void Programm10()
    {
        Console.WriteLine(" In the equation a*x^2 + b*x + c = 0");
        double a, b, c;
        do
        {
          Console.Write("the value of a: ");
          a = Convert.ToDouble(Console.ReadLine()); // Input validation
          if (a == 0) Console.WriteLine("Wrong value for a! Please try again");

        } while (a == 0);
        
        Console.Write("the value of b: ");
        b = Convert.ToInt32(Console.ReadLine());
        Console.Write("the value of c: ");
        c = Convert.ToDouble(Console.ReadLine());
       double dis = b * b - 4 * (a * c);
        if(dis < 0){
            Console.WriteLine("There is no solution");
        }else {
            double x1 = -1 * b + Math.Sqrt(dis);
            x1 = x1 / 2 / a;
            if (dis ==0)
            {
                Console.WriteLine(" The equation has one solution, x1 = {0} ", x1);
            }
            else
            {
                double x2 = -1 * b - Math.Sqrt(dis);
                x2 = x2 / 2 / a;
                Console.WriteLine(" The equation has one solution, x1 = {0} x2 = {1} ", x1 ,x2);
            }
        }
    }
}
