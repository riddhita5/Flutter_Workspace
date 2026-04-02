// parameterized constructor example
class Student
{
  int id =0;
  String name ="";
  String surname ="";
  String email ="";
  String password ="";

  Student(var i,var n,var s,var e,var p)
  {
    id = i;
    name = n;
    surname = s;
    email = e;
    password = p;
  }

  void display()
  {
    print("$id,$name,$surname,$email,$password");
  }
}

void main()
{
  Student s1 = Student(101, "Riddhita", "Gosai", "riddhita@gmail.com", "1234");
  Student s2 = Student(102, "Vanshika", "Gosai", "vanshu@gmail.com", "123456");
  Student s3 = Student(103, "Ami", "Gosai", "ami@gmail.com", "7890");

  s1.display();
  s2.display();
  s3.display();

}


