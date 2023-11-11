namespace lab5;
class Program
{
   static void Main(string[] args)
   {

        //    int citiesCount;
        //    do
        //    {
        //       Console.Write("Enter the value for citiesCount: ");
        //       if (!(int.TryParse(Console.ReadLine(), out citiesCount) && citiesCount > 0 && citiesCount <= 100))
        //       Console.WriteLine("Wrong value of citiesCount , citiesCount must be (1<=N<=100");

        //    } while (citiesCount <= 0 || citiesCount >= 100);

        //    int[] distance = new int[citiesCount];
        //    int[] price = new int[citiesCount];
        //    string input;

        //    for(int i=0; i<citiesCount; i++)
        //    {
        //        Console.WriteLine($"Enter value for the distance and Price of the city number {i+1}");
        //        input = Console.ReadLine();

        //        distance[i] = Convert.ToInt32(input.Split(' ')[0]);
        //        price[i] = Convert.ToInt32(input.Split(' ')[1]);

        //        if (distance[i] >= 1 && distance[i] <= 20000 && price[i] >= 1 && price[i] <= 2000000) i++;

        //        else
        //            Console.WriteLine("Wrong input for distance and price! the value must be: {1<=D<=20000} and {1<=P<=2000000}");

        //    }

        //    int maxDist = distance[0];
        //    int maxDistMinCost= price[0];

        //    for(int i = 1; i < citiesCount; i++)
        //    {
        //        if (distance[i] > maxDist)
        //        {
        //            maxDist = distance[i];
        //            maxDistMinCost = price[i];
        //        }

        //        if (distance[i] == maxDist && price[i] < maxDistMinCost) maxDistMinCost = price[i];


        //    }

        //    Console.WriteLine($"The miniman price for the longest distance triple is {maxDistMinCost}");
        int length;
        length = Convert.ToInt32(Console.ReadLine());
        int[] nums = new int[length];
        for(int i=0; i< length; i++)
        {
            nums[i] = Convert.ToInt32(Console.ReadLine());
        }
        bool exists = false;
        int k = 0;
        while (nums[k] % 2 != 0)
        {
            k++;
        }

        if(k < length)
        {
            exists = true;
        }

        if (exists)
        {
            Console.WriteLine("Even number at least one in list");
        }
        else
        {
            Console.WriteLine("Even number not founded in list");
        }
        
    }
}
