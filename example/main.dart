import 'package:prompter_sg/prompter_sg.dart';

void main(){
  // var terminal = new Terminal();

  // terminal.clearScreen();
  // terminal.printprompt('Hi there!');
  // var input= terminal.collectInput();
  // print('You just entered a value $input');
 
  var options =[
    new Option('I want red','#f00'),
    new Option('I want blue','#00f')
  ];
  var prompter= new Prompter();
  
  String colorCode=prompter.askMultiple('Select a color', options);
  bool answer=prompter.askBinary('Do you like the lib?');
  print(colorCode);
  print(answer);
}  
