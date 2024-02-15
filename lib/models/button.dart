import 'package:mixins/models/widget.dart';

abstract interface class Button implements Widget{
  @override
  void build() {
    print('Building button');
  }
}

class AndroidButton implements Button {
  @override
  void build() {
    print('Building Android button');
  }
}

class IOSButton implements Button {
  @override
  void build() {
    print('Building IOS button');
  }
}