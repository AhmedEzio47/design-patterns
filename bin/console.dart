import 'package:mixins/enums/pet_types.dart';
import 'package:mixins/enums/platforms.dart';
import 'package:mixins/models/car.dart';
import 'package:mixins/models/pet.dart';
import 'package:mixins/patterns/abstract_factory.dart';
import 'package:mixins/patterns/builder.dart';
import 'package:mixins/patterns/factory.dart';
import 'package:mixins/patterns/prototype.dart';

void main(List<String> arguments) {
  /// Factory pattern example
  Pet pet = createPet(PetTypes.dog, 'Leo');
  pet.speak();

  /// Abstract factory pattern example
  UIFactory uiFactory = UIFactory();
  PlatformWidgetFactory androidFactory =
      uiFactory.createFactory(Platforms.android);
  androidFactory.createButton().build();
  PlatformWidgetFactory iosFactory = uiFactory.createFactory(Platforms.ios);
  iosFactory.createTextField().build();

  /// Builder pattern example
  /// Just add the fields you want
  CarBuilder carBuilder = CarBuilder();
  Car car = carBuilder
      .withModel('Model S')
      .withBrand('Tesla')
      .withColor('Red')
      .withPrice(100000)
      .build();
  print(car.toString());
  print(CarBuilder.buildBugatti().toString());

  /// Prototype pattern example
  Vehicle classicCar = ClassicCar(brand: 'Mercedes');
  print(classicCar.clone().toString());

  /// Chain of responsibility pattern example
  LeaveApplication application = LeaveApplication(
    leaveType: LeaveTypes.sick,
    startDate: DateTime(2024, 2, 20),
    endDate: DateTime(2024, 2, 25),
    employee: Associate(name: 'Ahmed', salary: 3000),
  );
  ChainOfResponsibility.createChain().processLeaveApplication(application);
}
