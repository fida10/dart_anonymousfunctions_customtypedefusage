/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/anonymousfunctions_customtypedefusage_base.dart';

/*
Practice Question 4: Custom TypeDef Usage

Define a typedef named StringProcessor for a function type 
that takes a String and returns an int. 
Then, write a function processStringList that takes a 
List<String> and a StringProcessor as parameters. 
Use this function with an anonymous function to 
count the total number of characters in a list of strings.
*/

typedef StringProcessor = int Function(String x);

//inputList = ["hi", "how", "are"]
int processStringList(List<String> inputList, StringProcessor inputFunction) {
  return inputList.fold(
      0, (previousValue, element) => previousValue + inputFunction(element));
}
