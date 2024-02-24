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
  void processLeaveApplication(LeaveApplication leaveApplication) {
    if (approveLeave(leaveApplication)) {
      print('$name approved the leave for ${leaveApplication.employee.name}');
    } else if (successor != null) {
      successor?.processLeaveApplication(leaveApplication);
    } else {
      print('No one is available to approve the leave for ${leaveApplication.employee.name}');
    }
  }
}
