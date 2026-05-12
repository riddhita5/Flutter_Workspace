import 'dart:io';
import 'dart:math';

void main() {

  int secret = Random().nextInt(10) + 1; // 1 to 10
  int guess;

  var hint = (int g) =>
  g > secret ? "Too High!" :
  g < secret ? "Too Low!" :
  "Correct!";

  do {
    print("Guess a number (1-10):");
    guess = int.parse(stdin.readLineSync()!);

    print(hint(guess));

  } while (guess != secret);

  print("You won!");
}
