import 'package:design_patterns/index.dart';

final class ProjectLead extends Employee {
  const ProjectLead({
    required super.name,
    required super.salary,
    super.successor,
  });

  @override
  bool approveLeave(LeaveApplication leaveApplication) {
    return (leaveApplication.leaveType == LeaveTypes.sick ||
            leaveApplication.leaveType == LeaveTypes.casual) &&
        leaveApplication.duration <= 2;
  }
}
