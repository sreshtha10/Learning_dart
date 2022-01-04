import 'dart:core'; // don't need to import explicitly.
import 'dart:io';

void main() {
  print("Hello word");

  // supports both dynamic type inference and static type defined.
  var firstname = "Sreshtha";
  String lastname = "Mehrotra";

  // Compiles in 2 ways -> JIT and AOT compilation
  print(firstname + ' ' + lastname);

  stdout.writeln("What is your name?");
  String name =
      stdin.readLineSync()!; // ! is for not null implication like Kotlin
  print("My name is $name");

  /* Block comment*/

  /// Documentation

  /*
  Strongly typed language - the type of a variable is known at compile time.
  For example - C++, Java, Swift.

  Dynamic Typed Language: The type of variable is known at runtime.
  For example - Python, Ruby, JavaScript.
  */

  /* Basic types in dart:
  int
  String
  double
  bool
  dynamic -> run time determination
  */

  int a = 100;
  var a2 = 200;
  print("$a and $a2");

  double d1 = 10.1232;
  double d2 = 202.0121;
  print("$d1 and $d2");

  bool c = true;
  bool d = false;
  print("$c and $d");

  // dynamic var can be assigned any type at any time.
  dynamic x = "hello";
  x = 2;
  print(x);

  // RAW string
  var s = r'In a raw string, not even \n gets special treatment';
  print(s);

  // String to int
  var one = int.parse('1');
  assert(one == 1);

  // String to double
  var onePointone = double.parse('1.1');
  assert(onePointone == 1.1);

  // int to string
  var str = 1.toString();
  assert(str == '1');

  // double to string
  String pi = 3.14.toStringAsFixed(2);
  assert(pi == '3.14');

  // constant in dart -> const
  const constt = 1;
  print(constt.runtimeType);

  // operators are same as any other language.
  // if stmt same as java

  // ternary operator same as java

  var x1 = 100;
  if (x1 is int) {
    // use of 'is' keyword.
    print("Integer");
  }

  // switch is same as Java

  // for loop same as java
  for (var i = 1; i <= 10; i++) {
    //
  }

  var numbers = [1, 2, 3];
  // for-in loop
  for (var n in numbers) {
    //
  }

  // for each loop
  numbers.forEach((n) => print(n));

  // while loop same as Java

  List /* means List<Object> but can explicitly define List<String> etc.*/ names =
      ['Jack', 'Jill', 1];
  print(names);

  // set

  var halogens = {'flourine', 'chlorine'};

  // empty set
  var h1 = <String>{};

  // empty hash map
  var h3 = {};

  var gifts = {'first': 'lol', 'second': 'teddy'};

  var list = ['apples', 'mangoes', 'bananas'];

  // lamda function
  list.forEach((item) {
    print(item);
  });

  Person p1 = Person('Sreshtha', 21);
  p1.display();
}

dynamic square(var num) {
  return num * num;
}

void showOutput(var msg) {
  print(msg);
}

dynamic same(var num) => num;

class Person {
  String name;
  int age;

  Person(this.name, [this.age = 19]) {}

  // named constructor
  Person.guest({String this.name = 'Guest', int this.age = 18}) {}

  void display() {
    print(this.name);
    print(this.age);
  }
}
