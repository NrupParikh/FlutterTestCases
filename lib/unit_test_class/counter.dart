/* This file contains a class that
you want to test and resides in the lib folder*/

class Counter {
  
  int value = 0;

  void increment() => value++;

  void decrement() => value--;

  void printAllOddAndEvenNumbers(int start,int end, Function printFunction) {
   
    for(int i=start;i<=end;i++){
      if(i%2==0){
           printFunction('Even: $i');
          }else {
            printFunction('Odd: $i');
          }
    }
  }
}