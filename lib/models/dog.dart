import 'package:mixins/models/pet.dart';

class Dog extends Pet {
  Dog(super.name);

  @override
  void speak() {
    print('$name is woofing');
  }
}
