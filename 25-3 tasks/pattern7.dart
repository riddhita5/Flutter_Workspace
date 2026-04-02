import 'dart:io';

void main()
{
  int n = 5; // number of rows
  int totalStars = 10;

  for (int i = 0; i < n; i++)
  {

    int stars = totalStars ~/ 2 - i;
    int spaces = i * 2;

    // Left stars
    for (int j = 0; j < stars; j++) {
      stdout.write('*');
    }

    // // Middle spaces
    for (int j = 0; j < spaces; j++) {
      stdout.write(' ');
    }

    // // Right stars
    for (int j = 0; j < stars; j++) {
      stdout.write('*');
    }

    print('');
  }
}