import 'package:design_patterns/index.dart';

class BusinessCardDesigner {
  static void designCard(Worker worker) {
    print('''Business card:
    Name: ${worker.getFullName()}
    Title: ${worker.getJobTitle()}
    Address: ${worker.getAddress()}''');
  }
}
