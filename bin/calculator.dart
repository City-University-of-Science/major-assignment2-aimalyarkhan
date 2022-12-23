import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() {
  print('-------------Console Calculator----------');
  print('1 - Sum');
  print('2 - Subtract');
  print('3 - Multiply');
  print('4 - Divide');
  print('5 - sin');
  print('6 - tan');
  print('7 - cos');
  print('8 - asin');
  print('9 - atan');
  print('10 - acos');
  print('11 - log()');
  print('12 - square root');
  print('13 - Average');
  print('14 - Percentage');
  print('15 - Power');
  print('16 - Cube');
  double choice = getInput();

  if(choice == 1){
    print("_ Addition _");
    print("Enter first number:");
    double value1 = getInput();

    print("Enter second number:");
    double value2 = getInput();

    print("SUM of ${value1} and ${value2} is : ${value1+value2}");

  }
  else if(choice == 2){
    print("_ SUBTRACTION _");
    print("Enter first value:");
    double value1 = getInput();
    print("Enter second value:");
    double value2 = getInput();
    print("Answer of subtraction is : ${value1-value2}");

  }
  else if(choice == 3){

    print("_ Multiplication _");
    print("Enter first value: ");
    double value1 = getInput();
    print("Enter second value: ");
    double value2 = getInput();
    print("Answer of Multiplication is : ${value1*value2}");


  }
  else if(choice == 4){

    print("_ Division _");
    print("Enter first value: ");
    double value1 = getInput();
    print("Enter second value: ");
    double value2 = getInput();
    print("Answer of Division is : ${value1/value2}");

  }
  else if(choice == 5) {
    print("_ Sin _");
    print("Enter value: ");
    double value1 = getInput();
    print("sin($value1) : ${sin(value1)}");
  }
  else if(choice == 6){
    print("__Tan __");
    print("Enter number: ");
    double value1 = getInput();
    print("tan($value1) : ${tan(value1)}");

  }
  else if(choice == 7){
    print("_ Cos _");
    print("Enter number: ");
    double value1 = getInput();
    print("cos($value1) : ${cos(value1)}");
  }
  else if(choice == 8){
    print("_ asin _");
    print("Enter number: ");
    double value1 = getInput();
    print("asin($value1) : ${asin(value1)}");
  }
  else if(choice == 9){
    print("_ atan _");
    print("Enter number: ");
    double value1 = getInput();
    print("atan($value1) : ${atan(value1)}");
  }
  else if(choice == 10){

    print("_ acos _");
    print("Enter number: ");
    double value1 = getInput();
    print("acos($value1) : ${acos(value1)}");

  }else if(choice == 11){
    print("_ Log _");
    print("Enter number: ");
    double value1 = getInput();
    print("log($value1) is : ${log(value1)}");
  }else if(choice == 12){

    print("_ Square Root _");
    print("Enter number: ");
    double value1 = getInput();
    print("Square root of $value1 is : ${sqrt(value1)}");

  }
  else if(choice == 13){

    print("_ Average _");
    print("Enter total count of numbers: ");
    double value1 = getInput();
    List<num> arrayOfNumber = [];

    for(var i = 0;i<value1;i++){
      print("Enter number: ");
      var line3 = stdin.readLineSync(encoding: utf8);
      double a3;
      try{
        a3 = double.parse(line3 ?? '0');
      }catch(e){
        print("Invalid input! Please input choice number!");
        return;
      }
      arrayOfNumber.add(a3);
    }

    num totalCountOfNumbers = arrayOfNumber.length;
    num sumOfNumbers = 0;

    for(num b = 0;b<totalCountOfNumbers;b++){
      sumOfNumbers+=arrayOfNumber[b as int];
    }

    print("Average: ${sumOfNumbers/totalCountOfNumbers}");

  }
  else if(choice == 14){

    print("_ Percentage _");
    print("Enter total value: ");
    double value1 = getInput();
    print("Enter portion of value: ");
    double value2 = getInput();
    print("Percentage: ${(value2/value1) * 100}");

  }
  else if(choice == 15){
    print("_ Power _");
    print("Enter value: ");
    double value1 = getInput();
    print("Enter exponent (Power): ");
    double value2 = getInput();
    print("Answer: ${pow(value1, value2)}");
  }
  else if(choice == 16){
    print("_ Cube _");
    print("Enter value: ");
    double value1 = getInput();
    print("Answer: ${pow(value1, 3)}");
  }
}

double getInput(){
  var line = stdin.readLineSync(encoding: utf8);
  double a1;
  try{
    a1 = double.parse(line ?? '0');
    return a1;
  }catch(e){
    print("Invalid input! Please input choice number!");
    return 0;
  }
}