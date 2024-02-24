import 'package:design_patterns/patterns/abstract_factory/widget.dart';

abstract interface class TextField implements Widget {
  @override
  void build();
}

class AndroidTextField extends TextField {
  @override
  void build() {
    print('Building Android text field');
  }
}

class IOSTextField extends TextField {
  @override
  void build() {
    print('Building IOS text field');
  }
}
