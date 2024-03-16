import 'package:design_patterns/patterns/abstract_factory/widget.dart';

abstract interface class Button implements Widget {
  @override
  String build() {
    return ('Building button');
  }
}

class AndroidButton implements Button {
  @override
  String build() {
    return ('Building Android button');
  }
}

class IOSButton implements Button {
  @override
  String build() {
    return ('Building IOS button');
  }
}
