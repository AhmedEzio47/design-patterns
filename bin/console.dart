import 'package:design_patterns/index.dart';

void main(List<String> arguments) async {
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

  /// Adapter pattern example
  EmployeeClassAdapter classAdapter = EmployeeClassAdapter(
    firstName: 'Ahmed',
    lastName: 'Ali',
    age: 25,
    position: 'Software Engineer',
    address: 'Cairo, Egypt',
  );
  BusinessCardDesigner.designCard(classAdapter);

  EmployeeObjectAdapter objectAdapter = EmployeeObjectAdapter(Person(
    firstName: 'Ahmed',
    lastName: 'Nabil',
    address: 'Qalyub',
    position: 'Senior Mobile Engineer',
  ));

  BusinessCardDesigner.designCard(objectAdapter);
}
