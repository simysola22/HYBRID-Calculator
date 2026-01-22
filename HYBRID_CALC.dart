import 'dart:io';
import 'dart:math'; //FOR SQUARE ROOT

//NAME : SIMISOLAOLUWA ADEGBITE INIOLUWA
//MATRIC NUMBER : 24/14622
//DEPARTMENT : COMPUTER SCIENCE .
void main() {
  //QUADRATIC EQUATION
  stdout.write("Choose operation(+,-,*,/,quad):");
  String operation = stdin.readLineSync()!;

  if (operation == "quad") {
    //QUADRATIC SOLVER
    stdout.write("Enter value of a:");
    double a = double.parse(stdin.readLineSync()!);

    stdout.write("Enter value of b:");
    double b = double.parse(stdin.readLineSync()!);

    stdout.write("Enter value of c:");
    double c = double.parse(stdin.readLineSync()!);

    double discriminant = (b * b) - (4 * a * c);

    if (discriminant > 0) {
      double root1 = (-b + sqrt(discriminant)) / (2 * a);
      double root2 = (-b - sqrt(discriminant)) / (2 * a);
      print("Two real roots:x1 = $root1, x2 = $root2");
    } else if (discriminant == 0) {
      double root = -b / (2 * a);
      print("One real root:x = $root");
    } else {
      double realPart = -b / (2 * a);
      double imaginaryPart = sqrt(-discriminant) / (2 * a);
      print(
        "Complex roots: x1 = $realPart + ${imaginaryPart}i,x2 = $realPart - ${imaginaryPart}i",
      );
    }
  } else {
    //ASKING FOR FIRST NUMBER
    stdout.write("Enter first number:");
    double num1 = double.parse(stdin.readLineSync()!);

    //ASK FOR SECOND NUMBER
    stdout.write("Enter second number:");
    double num2 = double.parse(stdin.readLineSync()!);

    //ASK FOR OPERATION
    stdout.write("Enter operation(+,-,*,/,quad):");
    String operation = stdin.readLineSync()!;

    double result;

    //MAKE DECISIONS BASED ON OPERATION
    if (operation == "+") {
      result = num1 + num2;
    } else if (operation == "-") {
      result = num1 - num2;
    } else if (operation == "*") {
      result = num1 * num2;
    } else if (operation == "/") {
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error : Division by zero is not allowed.");
        return;
      }
    } else {
      print("invalid operation!");
      return;
    }
    //PRINT THE RESULT
    print("Result:$result");
  }
}
