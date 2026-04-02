class Student
{
  int id=0;
  String name="";
  String surname="";
  String email="";
  String pass="";

  display()
  {
    print("$id, $name, $surname, $pass");
  }

}
void main()
{
  Student s1 = Student();
  Student s2 = Student();
  Student s3 = Student();
  Student s4 = Student();
  Student s5 = Student();

  s1.id=101;
  s1.name="Riddhita";
  s1.surname="Gosai";
  s1.email="riddhita@gmail.com";
  s1.pass="1234";

  s2.id=102;
  s2.name="Jay";
  s2.surname="Der";
  s2.email="jay@gmail.com";
  s2.pass="5678";

  s3.id=103;
  s3.name="Mansi";
  s3.surname="Raval";
  s3.email="mansi@gmail.com";
  s3.pass="9876";


  s1.display();
  s2.display();
  s3.display();
}