import 'dart:io';

void main()
{
  print("Enter Your Word");
  var a = stdin.readLineSync().toString();

  Map<String,int> map = Map();
  for(int i = 0;i < a.length;i++)
    {
      String ch = a[i];
      if(ch == " ")continue;
      if(map[ch] == null)
        {
          map[ch] = 1;
        }
      else
        {
          map[ch] = map[ch]! + 1;
        }
    }

  print(map);
}