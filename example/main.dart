///imporing the rqquired files
import 'package:question_asker_bm/question_asker_bm.dart';

///start of main function
void main()
{
	final options = [new Option('I like Green', '#00ff00'),
					new Option('I like White', '#ffffff')];

	final asker = new Asker();
	String choosenAns = asker.askMultiple('What color do you like?', options);

	bool ansBinary = asker.askBinary('Do you like This Lib?');

	print(choosenAns);
	print(ansBinary);
}