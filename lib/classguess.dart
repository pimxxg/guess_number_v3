import 'dart:math';

class Game {

  int? _answer;
  var count = 0;

  Game({int a = 100}) {
    int? maxRandom = a ;
    var r = Random() ;
    _answer = r.nextInt(maxRandom) + 1; //have _ in front = private
  }

  int doGuess(int num) {
    if (num > _answer!) {
      count++;
      return 1;
    } else if (num < _answer!) {
      count++;
      return -1;
    } else{
      count++;
      return 0;
    }
  }

  void printCount() {
    print("Total guess " + count.toString());
  }
}