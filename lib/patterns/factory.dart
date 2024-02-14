import 'package:mixins/models/cat.dart';
import 'package:mixins/models/dog.dart';
import 'package:mixins/models/pet.dart';
import 'package:mixins/enums/pet_types.dart';

Pet createPet(
  PetTypes pet,
  String name,
) {
  switch (pet) {
    case PetTypes.dog:
      return Dog(name);
    case PetTypes.cat:
      return Cat(name);
  }
}
