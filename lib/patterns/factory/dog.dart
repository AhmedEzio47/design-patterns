import 'package:design_patterns/patterns/factory/pet.dart';

class Dog extends Pet {
  Dog(super.name);

  @override
  String speak() {
    return '$name is woofing';
  }
}
