import 'package:design_patterns/index.dart';

/// This is the adapter class that adapts the Person class to the Worker interface.
/// this is 1st approach of implementing the adapter pattern
/// it is called class adapter because it uses inheritance to adapt the adaptee to the target interface
/// it's also called two-way adapter because it can act as both the adaptee class and the target interface
///
class EmployeeClassAdapter extends Person implements Worker {
  EmployeeClassAdapter({
    String? firstName,
    String? lastName,
    int? age,
    String? position,
    String? address,
  }) : super(
            firstName: firstName,
            lastName: lastName,
            age: age,
            position: position,
            address: address);

  @override
  String getAddress() {
    return address ?? '';
  }

  @override
  String getFullName() {
    return '$firstName $lastName';
  }

  @override
  String getJobTitle() {
    return position ?? '';
  }
}
