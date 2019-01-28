///importing files
import 'option.dart';
import 'package:question_asker_bm/src/terminal.dart';

///creating the instance of Terminal
final Terminal _terminal = const Terminal();

///class for asking a question
class Asker
{
  ///method for asking multiple choice uestion
  askMultiple(String promt, List<Option> options)
  {
    final input = _ask(promt, options);
    try {
      return options[int.parse(input)].value;
    } catch (err) {
      return askMultiple(promt, options);
    }
  }

  ///method for asking yes/no type uestion
  bool askBinary(String promt)
  {
    final input = _ask('$promt (y/n): ', []);
    //stdout.write('>>> ');
    return input.contains('y');

  }

  ///the common private method used in above function
  String _ask(String promt, List<Option> options)
  {
    //clearing the terminal
    _terminal.clearScreen();
    //displaying the question
    _terminal.printPromt(promt);
    //dislpaying options
    _terminal.printOption(options);
    //returning the input by user
    return _terminal.colectInput();
  }
}