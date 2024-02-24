import 'package:design_patterns/enums/pet_types.dart';
import 'package:design_patterns/patterns/factory/cat.dart';
import 'package:design_patterns/patterns/factory/dog.dart';
import 'package:design_patterns/patterns/factory/pet.dart';

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
