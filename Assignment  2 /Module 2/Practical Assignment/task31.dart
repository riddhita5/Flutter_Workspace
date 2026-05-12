import 'dart:async';

Stream<int> numbers() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // emit number
  }
}

void main() async {
  await for (int num in numbers()) {
    print(num);
  }

  print("Stream stopped.");
}
