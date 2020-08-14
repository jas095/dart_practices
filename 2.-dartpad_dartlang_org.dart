import 'dart:convert';

void main(){
  
//   final legion = new Hero('David Haller','psychic');
  
//   print(legion.name);
//   print(legion.power);
  
  
  final rawJson = '{"name":"David Haller", "power":"psychic"}';
  Map parsedJson = json.decode(rawJson);
  print('The map is : $parsedJson\n');
  
  final legion = new Hero.fromJson(parsedJson);
  
  print('*The Hero Instance Value*');
  print(legion.name);
  print(legion.power);
  
}

class Hero{
  String name;
  String power;
  
  Hero(this.name, this.power);
  
  Hero.fromJson(Map parsedJson){
    name = parsedJson['name'];
    power = parsedJson['power'];
  }
}
