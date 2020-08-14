void main() {
  //First - prints variable $name twice
  String name = '"Hello world in Dart"';
  for (int i = 0; i < 2; i++) {
    print('Hello there, this is my $name');
  }

  print('_______________________________________\n');

  int integerNumber = 7;
  double doubleNumber = 3.14159265359; //Pi
  String operation = 'This is the operation of($integerNumber/$doubleNumber)= ';
  print(operation + '${integerNumber / doubleNumber}');

  String randomPhrase = 'Ahsoka is not a jedi';

  print(randomPhrase.toUpperCase());
  print('The last letter is: ${randomPhrase[randomPhrase.length - 1]}');

  print('_______________________________________\n');

  List dynamycElement = [
    'The next element is the value of Pi',
    doubleNumber,
    'Hola mundo, en español',
    '"1, 2, 3"',
    1,
    2,
    3
  ];
  print(dynamycElement);

  List<int> intNumbers = [1, 2, 3, 4, 5, 6, 9, 8, 7];
  print(intNumbers);
  intNumbers.add(73);
  intNumbers.add(0);
  intNumbers.add(-73);

  print('We add three elements to the list: $intNumbers');

  List<double> fixedList = new List(3);
  fixedList[0] = 3.14159265359;
  fixedList[1] = 30.0;
  fixedList[2] = -3.1415;
  print('This is an fixed List of 3 double: $fixedList');
  print('_______________________________________\n');

  String property = 'name';

  Map<String, dynamic> person = {
    'name': 'Jose Angel',
    'age': 32,
    'single': true
  };

  print(person[property]);
  print(person['age']);
  print(person['single']);

  Map<int, String> persons = {1: 'Juan', 2: '32', 3: 'Doctor'};

  print(persons);
  persons.addAll({9: 'Swimmer'});
  persons.addAll({4: 'Dog'});
  print(persons);
  print(persons[4]);
  print('_______________________________________\n');
  
  String firstName1 = 'Jose Angel';
  String lastName1 = 'Silva';
  
  String greet = greetings(firstName:firstName1, lastName:lastName1);
  print('Function 1\n$greet');
  
  String greet2 = greetings2(lastName:lastName1,firstName:firstName1);
  print('Function 2\n$greet2');
  functionX();
  
  print('_______________________________________\n');
  
  final wolwering = new Hero(name:'Logan', power:'regeneration');
  
  print(wolwering);
  print('_______________________________________\n');
}


String greetings({String firstName,String lastName}){
  
  return 'First name: $firstName \nLast Name: $lastName';
}

String greetings2({String firstName,String lastName})=> 'First name: $firstName \nLast Name: $lastName';

void functionX()=> print('Function void');

// end of function

class Hero{
  String name;
  String power;
  
  Hero({this.name, this.power}); //constructor
  String toString()=> 'Hero\'s name: $name \nPower: $power';
}
