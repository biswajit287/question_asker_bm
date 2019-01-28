import 'package:question_asker_bm/question_asker_bm.dart';

void main()
{
	final options = [new Option('I like Green', '#00ff00'),
					new Option('I like White', '#ffffff')];

	final promter = new Promter();
	String choosenAns = promter.askMultiple('What color do you like?', options);

	bool ansBinary = promter.askBinary('Do you like This Lib?');

	print(choosenAns);
	print(ansBinary);
}