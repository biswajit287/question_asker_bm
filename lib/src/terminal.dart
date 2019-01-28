import 'dart:io';
import 'option.dart';

//class for interacting with the terminal i.e reading and writing 
class Terminal 
{
  const Terminal();
  void printPromt(String promt)
  {
    stdout.writeln(promt);
  }

  void printOption(List<Option> options)
  {
    // for(int i=0; i < options.length; i++){
    //   stdout.writeln('[$i] - ${options[i].label}');
    // }

    options.asMap().forEach((index,label){
      stdout.writeln('[$index] - ${options[index].label}');
    });

    stdout.writeln('\nEnter your Choice: ');
    stdout.write('>>>  ');
  }

  String colectInput()
  {
    return stdin.readLineSync();
  }

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