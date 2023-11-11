import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  var name = stdin.readLineSync()!;
  
  stdout.write('$name. Enter your surname: ');
  var surname = stdin.readLineSync()!;
  
  stdout.write('$name $surname. Enter your year of birth: ');
  var yearOfBirth = int.parse(stdin.readLineSync()!);
  
  var age = DateTime.now().year - yearOfBirth;
  
  print('Dear $name $surname, you are $age years old.');
}
