import 'package:design_patterns/index.dart';

final class Manager extends Employee {
  const Manager({
    required super.name,
    required super.salary,
    super.successor,
  });

  @override
  bool approveLeave(LeaveApplication leaveApplication) {
    return (leaveApplication.leaveType == LeaveTypes.earned ||
            leaveApplication.leaveType == LeaveTypes.annual) &&
        leaveApplication.duration <= 5;
  }
}
