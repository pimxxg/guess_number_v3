// ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';
import 'classguess.dart';


void main() {
  for (;;) {
    stdout.write('Enter a maximun number to random : ');
    var max = stdin.readLineSync();
    var maxi = int.tryParse(max!);
    var r = Random() ;
    const maxRandom = 100 ;
    var game = Game();
    var sum = 0;

    for (;;) {
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      var result2 = game.doGuess(guess);

      if (result2 == 0) {
        print("$guess is CORRECT! ❤");
        break;
      } else if (result2 == 1) {
        print("$guess is TOO HIGH!");
      } else if (result2 == -1) {
        print("$guess is TOO LOW! ");
      }
    }

    game.printCount();

    for (;;) {
      stdout.write('Play agian? (Y/N) : ');
      var ans = stdin.readLineSync();
      String Y = 'Y';
      String y = 'y';
      String N = 'N';
      String n = 'n';

      if (ans == Y || ans == y) {
        sum = 1;
        break;
      } else if (ans == N || ans == n) {
        sum = -1;
        break;
      }
      else if (ans != N || ans == n || ans == Y || ans == y )
        continue ;
    }
    if (sum == 1) {
      continue;
    }
    else {
      break;
    }
  }
}