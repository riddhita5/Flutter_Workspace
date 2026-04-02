class Student
{
  int id=0;
  String name="";
  int age=0;

  Student(var id,var name,var age)
  {
    this.id=id;
    this.name=name;
    this.age=age;
  }

  void display()
  {
    print("$id,$name,$age");
  }
}
void main()
{

  Student s1 = Student(101, "Riddhita",21);
  Student s2 = Student(102, "Vanshika",23);
  Student s3 = Student(103, "Ami",25);

  s1.display();
  s2.display();
  s3.display();

}
