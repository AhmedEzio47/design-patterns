import 'package:design_patterns/patterns/abstract_factory/widget.dart';

abstract interface class TextField implements Widget {
  @override
  String build();
}

class AndroidTextField extends TextField {
  @override
  String build() {
    return 'Building Android text field';
  }
}

class IOSTextField extends TextField {
  @override
  String build() {
    return 'Building IOS text field';
  }
}
