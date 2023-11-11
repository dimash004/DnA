import 'dart:io';

void main() {

  double base, height;

  
  stdout.write("Enter a base: ");
  base = double.parse(stdin.readLineSync() ?? "");

  
  stdout.write("Enter a height: ");
  height = double.parse(stdin.readLineSync() ?? "");


  double area = 0.5 * base * height;

  
  print("The area of height $height and base $base will be");
  print(area);
}


