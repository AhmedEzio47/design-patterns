import 'package:design_patterns/patterns/chain_of_responsibility/leave_application.dart';

abstract interface class LeaveApprover {
  String processLeaveApplication(LeaveApplication leaveApplication);
}
