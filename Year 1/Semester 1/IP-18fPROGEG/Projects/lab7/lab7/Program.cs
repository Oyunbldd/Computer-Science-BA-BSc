
namespace lab7;

class Program
{

    struct PlainTicket
    {
        public int distance;
        public int price;
    }

    static void Main(string[] args)
    {
        int citiesCount;
        do
        {
            Console.Write("Enter the value for cities: ");
            if (!(int.TryParse(Console.ReadLine(), out citiesCount) && citiesCount > 0 && citiesCount <= 100)) //input validation
                Console.WriteLine("Wrong value for cities, cities must be (1≤N≤100)");
        } while (citiesCount <= 0 || citiesCount > 100);


        PlainTicket[] plainTickets = new PlainTicket[citiesCount];
        string input;

        for (int i = 0; i < citiesCount;)
        {
            Console.Write($"Enter the value for the distance and Price of the city number {i + 1}: ");
            input = Console.ReadLine();

            plainTickets[i].distance = Convert.ToInt32(input.Split(' ')[0]);
            plainTickets[i].price = Convert.ToInt32(input.Split(' ')[1]);

            if (plainTickets[i].distance >= 1 && plainTickets[i].distance <= 20000 && plainTickets[i].price >= 1 && plainTickets[i].price <= 2000000) //input validation for arries 
                i++;

            else
                Console.WriteLine("Wrong input for distance and price! the value value be:  (1≤D≤20000) and (1≤P≤2000000) ");

        }

        int maxDist = plainTickets[0].distance;
        int maxDistMinCost = plainTickets[0].price;

        for (int i = 1; i < citiesCount; i++)
        {
            if (plainTickets[i].distance > maxDist)
            {
                maxDist = plainTickets[i].distance
                maxDistMinCost = plainTickets[i].price
            }
            if (plainTickets[i].distance == maxDist && pplainTickets[i].price < maxDistMinCost)
            {
                maxDistMinCost = plainTickets[i].price
            }


        }

        Console.WriteLine($"The minimam price for the longeest distance tripe is {maxDistMinCost}");



    }


// Console.WriteLine("tesintg")