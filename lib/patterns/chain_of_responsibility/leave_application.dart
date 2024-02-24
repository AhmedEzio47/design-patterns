import 'package:design_patterns/index.dart';

class LeaveApplication {
  final LeaveTypes leaveType;
  final DateTime startDate;
  final DateTime endDate;
  final Employee employee;

  num get duration => endDate.difference(startDate).inDays;

  const LeaveApplication({
    required this.leaveType,
    required this.startDate,
    required this.endDate,
    required this.employee,
  });
}
