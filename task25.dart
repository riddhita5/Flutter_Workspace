Future display(int seconds,String msg)
{
  final duration = Duration(seconds:  seconds);
  return Future.delayed(duration).then((value) => msg);
}

void main()async
{
  print("Loading...");
  await display(3,"Process Completed").then((status)
  {
    print(status);
  });
}