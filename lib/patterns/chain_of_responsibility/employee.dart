import 'package:design_patterns/index.dart';

abstract class Employee implements LeaveApprover {
  final String name;
  final int salary;
  final LeaveApprover? successor;

  const Employee({
    required this.name,
    required this.salary,
    this.successor,
  });

  bool approveLeave(LeaveApplication leaveApplication);

  @override
  String processLeaveApplication(LeaveApplication leaveApplication) {
    if (approveLeave(leaveApplication)) {
      return ('$name approved the leave for ${leaveApplication.employee.name}\n');
    } else if (successor != null) {
      return successor?.processLeaveApplication(leaveApplication) ?? '';
    } else {
      return ('No one is available to approve the leave for ${leaveApplication.employee.name}\n');
    }
  }
}
