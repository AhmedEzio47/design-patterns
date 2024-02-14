
import 'package:mixins/enums/platforms.dart';
import 'package:mixins/patterns/abstract_factory.dart';
import 'package:mixins/patterns/factory.dart';
import 'package:mixins/models/pet.dart';
import 'package:mixins/enums/pet_types.dart';

void main(List<String> arguments) {
  /// Factory pattern example
  Pet pet = createPet(PetTypes.dog, 'Leo');
  pet.speak();

  /// Abstract factory pattern example
  UIFactory uiFactory = UIFactory();
  PlatformWidgetFactory androidFactory = uiFactory.createFactory(Platforms.android);
  androidFactory.createButton().build();
  PlatformWidgetFactory iosFactory = uiFactory.createFactory(Platforms.ios);
  iosFactory.createTextField().build();
}
