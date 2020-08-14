
void main(){
  
  final dog = new Dog();
  dog.makeSound();
  
  final cat = new Cat();
  cat.makeSound();
  
  final superman = new Hero();
  superman.name = 'Clark Kent';
  superman.courage = 10;
  
  final lex = new Villain();
  lex.name = 'Alexander Joseph Luthor';
  lex.evil = 10;
  
  print('The hero is: ${superman.name}');
  print('Courage: ${superman.courage}');
  print('The villain is: ${lex.name}');
  print('Evil: ${lex.evil}');
  
}

abstract class Animal{
  int paws;
  
  void makeSound(); 
}

class Dog implements Animal{
  int paws;
  
  void makeSound () => print('woof-woof guauf!!');
}

class Cat implements Animal{
  int paws;
  void makeSound()=> print('MIAUUUUUUUU!!');
}

abstract class Character{
  String name;
  String power;
}

class Hero extends Character{
  int courage;
}

class Villain extends Character{
  int evil;
}
