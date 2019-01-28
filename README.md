
# question_asker_bm
This library can be used to create a multiple choice and yes/no type question 
wizard CLI in dart

## Usage

### Import the package
To use this library, follow the [library installation instructions.](https://pub.dartlang.org/packages/question_asker_bm#-installing-tab-)

### Use the Library
Add the following import to your Dart code:

```dart
import 'package:question_asker_bm/question_asker_bm.dart';
```
Instantiate `Promter` class with the scopes you want:

```dart
final promter = new Promter();
```
### List of Methods you can use: 
####    1. askMultiple(question,options)
         a) First argument is the question to ask
         b) Second argument is the list of answers(options) for the given question
        *Note*: This function returns the option selected by the user
    
####  2. askBinary(question)
        => Takes an argument as the question to ask
        *Note*: This function return either TRUE or FALSE based on the value selected by the user. 
                a) This returns true if user type y or yes 
                b) This returns flase if user type f or false 

You can now use the `Promter` class to use the methods in your Dart code, e.g.

```dart
void main()
        {
            //craete a list of Options for a given question
            final options = [new Option('I like Green', '##00ff00'),
                            new Option('I like White', '#FFFFFF')];

            //creating the object of Promter class
            final promter = new Promter();

            //Asking a multiple choice quesition along with passing the options for the question
            String choosenAns = promter.askMultiple('What color do you like?', options);

            //asking a binary type means Yes or No type Question    
            bool ansBinary = promter.askBinary('Do you like This Lib?');

            //displaying the result choosen by the user
            print(choosenAns);
            print(ansBinary);
        }
```