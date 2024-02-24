import 'package:design_patterns/index.dart';

class ChainOfResponsibility {
  static LeaveApprover createChain() {
    const director = Director(name: 'Rayan', salary: 20000);
    const manager = Manager(name: 'Mohammed', salary: 10000, successor: director);
    const projectLead = ProjectLead(
      name: 'Ihab',
      salary: 5000,
      successor: manager,
    );
    return projectLead;
  }
}
