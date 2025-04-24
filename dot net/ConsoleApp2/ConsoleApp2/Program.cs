// See https://aka.ms/new-console-template for more information
using ConsoleApp2;

class Vehicle  
{
    public string brand = "Ford";  
    public void honk()                 {
        Console.WriteLine("Tuut, tuut!");
    }
}

class Car 
{
    public string modelName = "Mustang";  
}

class Program
{
    static void Main(string[] args)
    {
        
        Car myCar = new Car();

        myCar.honk();

        Console.WriteLine(myCar.brand + " " + myCar.modelName);
    }
}