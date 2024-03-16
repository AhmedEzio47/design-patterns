import 'package:design_patterns/index.dart';

class BusinessCardDesigner {
  static String designCard(Worker worker) {
    return '''Business card:
    Name: ${worker.getFullName()}
    Title: ${worker.getJobTitle()}
    Address: ${worker.getAddress()}''';
  }
}
