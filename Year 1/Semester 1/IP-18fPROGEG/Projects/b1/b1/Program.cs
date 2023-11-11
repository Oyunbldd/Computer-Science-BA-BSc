using System;
namespace b1
{
    internal class Program
    {

        static void Main(string[] args)
        {

            int numberOfTowns;
            numberOfTowns = Convert.ToInt32(Console.ReadLine());


            int count = 0;
            int[] budapest = new int[numberOfTowns];
            int[] pecs = new int[numberOfTowns];
            for (int i = 0; i < numberOfTowns; i++)
            {
                string input;
                input = Console.ReadLine();
                budapest[i] = Convert.ToInt32(input.Split(" ")[0]);
                pecs[i] = Convert.ToInt32(input.Split(" ")[1]);
            }
            for (int i = 0; i < numberOfTowns; i++)
            {
                if (budapest[i] < pecs[i])
                {
                    count += 1;
                }
            }
            Console.WriteLine(count);
        }
    }
}