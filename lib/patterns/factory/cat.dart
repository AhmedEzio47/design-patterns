import 'package:design_patterns/patterns/factory/pet.dart';

class Cat extends Pet {
  Cat(super.name);

  @override
  String speak() {
    return '$name is meowing';
  }
}
