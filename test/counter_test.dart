/* This file contains the tests
themselves and lives inside the test folder*/

import 'package:flutter_application_1/counter.dart';
import 'package:test/test.dart';

// =================== SINGLE TEST CASE
// void main(){
//   test("Counter value should be incremented", () {
//     final counter = Counter();
//     counter.increment();
//     expect(counter.value,1);
//   });
// }

// =================== MULTIPLE TEST CASES [group]

void main(){
group("Test Start, Increment, Decrement", ()  {

// TEST CASE 1 : INITIAL VALUE
  test("Value start at 0",(){
    expect(Counter().value,0);
  });


// TEST CASE 2 : INCREMENTED VALUE
  test("Value should be incremented",(){
      final counter = Counter();
      counter.increment();
      expect(counter.value,1);
  });

// TEST CASE 3 : DECREMENTED VALUE
  test("Value should be decremented",(){
    final counter = Counter();
    counter.decrement();
    expect(counter.value,-1);
  });

// TEST CASE 4 : PRINT EVEN AND ODD NUMBERS

  test('Check number is Even or Odd',(){
    
  var printedMessages = [];

  void mockPrint(String message) {
    printedMessages.add(message);
  }

  final counter = Counter();
    counter.printAllOddAndEvenNumbers(0,10,mockPrint);
    var output = [
    'Even: 0',
    'Odd: 1',
    'Even: 2',
    'Odd: 3',
    'Even: 4',
    'Odd: 5',
    'Even: 6',
    'Odd: 7',
    'Even: 8',
    'Odd: 9',
    'Even: 10',
    ];

    expect(printedMessages, output);
  });
});
}