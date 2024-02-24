import 'package:design_patterns/index.dart';

final class Associate extends Employee {
  const Associate({
    required super.name,
    required super.salary,
    super.successor,
  });

  @override
  bool approveLeave(LeaveApplication leaveApplication) => false;
}
