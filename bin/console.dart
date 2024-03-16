import 'package:design_patterns/index.dart';

void main(List<String> arguments) async {
  /// Factory pattern example
  Pet pet = createPet(PetTypes.dog, 'Leo');
  Logger.consoleLog(patternName: 'Factory', printable: pet.speak());

  /// Abstract factory pattern example
  UIFactory uiFactory = UIFactory();
  PlatformWidgetFactory androidFactory = uiFactory.createFactory(Platforms.android);
  androidFactory.createButton().build();
  PlatformWidgetFactory iosFactory = uiFactory.createFactory(Platforms.ios);
  Logger.consoleLog(
      patternName: 'Abstract factory', printable: iosFactory.createTextField().build());

  /// Builder pattern example
  /// Just add the fields you want
  CarBuilder carBuilder = CarBuilder();
  Car car =
      carBuilder.withModel('Model S').withBrand('Tesla').withColor('Red').withPrice(100000).build();
  Logger.consoleLog(patternName: 'Builder', printable: car.toString());
  Logger.consoleLog(patternName: 'Builder', printable: CarBuilder.buildBugatti().toString());

  /// Prototype pattern example
  Vehicle classicCar = ClassicCar(brand: 'Mercedes');
  Logger.consoleLog(patternName: 'Prototype', printable: classicCar.clone().toString());

  /// Chain of responsibility pattern example
  Logger.patternExampleTitle('Chain of responsibility');
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
  Logger.consoleLog(
      patternName: 'Classic Adapter', printable: BusinessCardDesigner.designCard(classAdapter));

  EmployeeObjectAdapter objectAdapter = EmployeeObjectAdapter(Person(
    firstName: 'Ahmed',
    lastName: 'Nabil',
    address: 'Qalyub',
    position: 'Senior Mobile Engineer',
  ));
  Logger.consoleLog(
      patternName: 'Object Adapter', printable: BusinessCardDesigner.designCard(objectAdapter));

  /// Bridge pattern example
  final linkedList = SinglyLinkedList<int>();
  final queue = Queue<int>(linkedList);
  queue.offer(1);
  queue.offer(2);
  queue.offer(3);
  queue.poll();
  Logger.consoleLog(patternName: 'Bridge', printable: queue.peek().toString());
}
