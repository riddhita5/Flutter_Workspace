class Student
{
  static var count=0;
  Student()
  {
    count++;
    print(count);
  }
}
void main()
{
  Student s1 = Student();
  Student s2 = Student();
  Student s3 = Student();
}