import 'package:design_patterns/index.dart';

class EmployeeObjectAdapter implements Worker {
  EmployeeObjectAdapter(this.adaptee);

  final Person adaptee;

  @override
  String getAddress() => adaptee.address ?? '';

  @override
  String getFullName() => '${adaptee.firstName} ${adaptee.lastName}';

  @override
  String getJobTitle() => adaptee.position ?? '';
}
