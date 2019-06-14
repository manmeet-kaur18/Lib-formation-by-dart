import 'dart:io';
import 'option.dart';

class Terminal{

  const Terminal();

  // dontcallme(){
  //   'Blow up my computer - only call me if you really know what';
  // }

  void printprompt(String prompt){
     stdout.writeln(prompt); 
  }



  String collectInput(){
    return stdin.readLineSync();
  }



  void printOptions(List<Option> options){
    // for(var i=0;i<options.length;i++){
    //   stdout.writeln('[$i]-${options[i].label}');
    // }

    options.asMap().forEach((index,option){
      stdout.write('[$index]-${option.label}');
    });

    stdout.writeln('enter your choice\n');
    stdout.write('>');
  }



  void clearScreen(){
  if(Platform.isWindows){
    stdout.write('\x1B[2J\x1B[0f');
  }
  else{
    stdout.write('\x1B[2J\x1B[3J\x1B[H');
  }
  }
}

