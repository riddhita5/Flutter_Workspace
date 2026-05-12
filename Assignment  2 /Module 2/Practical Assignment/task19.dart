import 'dart:io';

class Vehicle
{
  void type()
  {
    print("This is a vehicle");
  }
}

class Car implements Vehicle
{
  var cartype;
  var fuel;
  var speed;

  void data1()
  {

    print("Enter Your Type of Car");
    cartype = stdin.readLineSync().toString();

    print("Enter Car fuel type:");
    fuel = stdin.readLineSync().toString();

    print("Enter Car max speed:");
    speed = int.parse(stdin.readLineSync().toString());
  }

  void display1()
  {
    print("CarType: $cartype");
    print("Fuel: $fuel");
    print("Max Speed: $speed km/h");
  }

  @override
  void type()
  {
    print("This is a vehicle");
  }
}

class Bike implements Vehicle
{
  var biketype;
  var fuel;
  var speed;

  void data2()
  {
    print("Enter Your Type of Bike");
    biketype = stdin.readLineSync().toString();

    print("Enter Bike fuel type:");
    fuel = stdin.readLineSync().toString();

    print("Enter Bike max speed:");
    speed = int.parse(stdin.readLineSync().toString());
  }

  void display2()
  {
    print("BikeType: $biketype");
    print("Fuel: $fuel");
    print("Max Speed: $speed km/h");
  }

  @override
  void type()
  {
    print("This is a vehicle");
  }
}

void main()
{
  Car c1 = Car();
  Bike b1 = Bike();

  print("Enter Car Details:");
  c1.type();
  c1.data1();

  print("Enter Bike Details:");
  b1.type();
  b1.data2();

  print("\n Car Details:");
  c1.display1();

  print("\n Bike Details:");
  b1.display2();
}