import 'package:design_patterns/patterns/factory/pet.dart';

class Cat extends Pet {
  Cat(super.name);

  @override
  void speak() {
    print('$name is meowing');
  }
}
