import 'option.dart';
import 'package:question_asker_bm/src/terminal.dart';
final Terminal _terminal = const Terminal();

//class for asking a question
class Promter
{
  askMultiple(String promt, List<Option> options)
  {
    final input = _ask(promt, options);
    try {
      return options[int.parse(input)].value;
    } catch (err) {
      return askMultiple(promt, options);
    }
  }

  bool askBinary(String promt)
  {
    final input = _ask('$promt (y/n): ', []);
    //stdout.write('>>> ');
    return input.contains('y');

  }

  String _ask(String promt, List<Option> options)
  {
    _terminal.clearScreen();
    _terminal.printPromt(promt);
    _terminal.printOption(options);
    return _terminal.colectInput();
  }
}