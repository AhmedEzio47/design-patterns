import 'package:mixins/models/widget.dart';

class TextField extends Widget {
  @override
  void build() {
    print('Building text field');
  }
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