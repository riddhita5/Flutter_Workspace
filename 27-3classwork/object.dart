class Student
{
  var id;
  var name;
}
void main()
{
  var s1 = Student();
  Student s2 = Student();
  Student s3 = Student();

  s1.id=101;
  s1.name="Riddhita";

  s2.id=102;
  s2.name="Jay";

  s3.id=103;
  s3.name="Mansi";

  print("${s1.id},${s1.name}");
  print("${s2.id},${s2.name}");
  print("${s3.id},${s3.name}");
}
