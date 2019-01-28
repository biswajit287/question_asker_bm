import 'dart:io';
import 'option.dart';

///class for interacting with the terminal i.e reading and writing 
class Terminal 
{
  const Terminal();

  ///printing the question to screen
  void printPromt(String promt)
  {
    stdout.writeln(promt);
  }

  ///printing the options for question to screen
  void printOption(List<Option> options)
  {
    options.asMap().forEach((index,label){
      stdout.writeln('[$index] - ${options[index].label}');
    });

    stdout.writeln('\nEnter your Choice: ');
    stdout.write('>>>  ');
  }

  ///getting the option selected by the user
  String colectInput()
  {
    return stdin.readLineSync();
  }

  ///clearing the screen
  void clearScreen()
  {
    if(Platform.isWindows){
      stdout.write('\x1B[2J\x1B[0f');
    }
    else{
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }
}