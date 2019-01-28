
This library can be used to create a multiple choice question wizard CLI in dart
To use this library--
    #import the library in your project
    #Create an object of Promter class
    #Use the aksMultiple and askBinary function to ask a question

    #example code with explanation: 

        void main()
        {
            //craete a list of Options for a given question
            final options = [new Option('I like Green', '##00ff00'),
                            new Option('I like White', '#FFFFFF')];

            //creating the object of Promter class
            final promter = new Promter();

            //Asking a multiple choice quesition along with passing the options for the question

                //askMultiple() function takes two parammeter as argument
                    => First argument is the question to ask
                    => Second argument is the answers options for the given question
                    ##this function return the option selected by the user
            String choosenAns = promter.askMultiple('What color do you like?', options);

            //asking a binary type means Yes or No type Question
                
                //askMultiple() function takes one parammeter as argument
                        => argument is the question to ask
                        ##this function return the either TRUE or FALSE based on the value selected by the user. 
                            => This returns true if user type y or yes 
                            => This returns flase if user type f or false 
            bool ansBinary = promter.askBinary('Do you like This Lib?');

            print(choosenAns);
            print(ansBinary);
        }