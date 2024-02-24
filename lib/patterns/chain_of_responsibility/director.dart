import 'package:design_patterns/index.dart';

final class Director extends Employee {
  const Director({
    required super.name,
    required super.salary,
    super.successor,
  });

  @override
  bool approveLeave(LeaveApplication leaveApplication) {
    return leaveApplication.duration < 30;
  }
}
