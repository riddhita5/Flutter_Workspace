class Student
{
  int id =0;
  String name="";
  static String college="Atmiya";

  Student(var id,var name)
  {
    this.id=id;
    this.name=name;
  }

  void display()
  {
    print("$id,$name,$college");
  }

}
void main()
{
  Student s1 = Student(101, "Riddhita");
  Student s2 = Student(102, "Vanshika");
  Student s3 = Student(103, "Ami");

  s1.display();
  s2.display();
  s3.display();
}