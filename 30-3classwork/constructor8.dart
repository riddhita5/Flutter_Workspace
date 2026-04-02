class Student
{
  var id;
  var name;
  var surname;
  var email;
  var pass;

  Student(var i,var n,[var s,var e,var p])
  {
    id = i;
    name = n;
    surname = s;
    email = e;
    pass=p;
  }

  void display()
  {
    print("$id ,$name, $surname,$email,$pass");
  }
}
void main()
{
  Student s1 = Student(101,"jay","der","j@gmail.com","1234");
  Student s2 = Student(102,"riddhita","gosai","r@gmail.com","1234");
  Student s3 = Student(103,"mansi","raval");

  s1.display();
  s2.display();
  s3.display();
}