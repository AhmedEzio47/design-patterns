import 'package:mixins/models/widget.dart';

class Button extends Widget{
  @override
  void build() {
    print('Building button');
  }
}

class AndroidButton extends Button {
  @override
  void build() {
    print('Building Android button');
  }
}

class IOSButton extends Button {
  @override
  void build() {
    print('Building IOS button');
  }
}