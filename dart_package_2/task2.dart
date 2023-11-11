import  'dart:io';

void main() {
  stdout.write("Enter the radius: ");
  String input = stdin.readLineSync() ?? "";


  double radius = double.tryParse(input) ?? 0.0;


  double area = calculateArea(radius);


  print("The area is: $area");
}

double calculateArea(double radius) {
  return 3.14159 * radius * radius;
  }