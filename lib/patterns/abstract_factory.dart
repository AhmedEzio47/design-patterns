import 'package:mixins/enums/platforms.dart';
import 'package:mixins/models/button.dart';
import 'package:mixins/models/text_field.dart';

abstract class PlatformWidgetFactory {
  Button createButton();
  TextField createTextField();
}

class AndroidFactory implements PlatformWidgetFactory {
  @override
  Button createButton() {
    return AndroidButton();
  }

  @override
  TextField createTextField() {
    return AndroidTextField();
  }
}

class IOSFactory implements PlatformWidgetFactory {
  @override
  Button createButton() {
    return IOSButton();
  }

  @override
  TextField createTextField() {
    return IOSTextField();
  }
}

class UIFactory {
  PlatformWidgetFactory createFactory(Platforms platform) {
    switch (platform) {
      case Platforms.android:
        return AndroidFactory();
      case Platforms.ios:
        return IOSFactory();
      default:
        throw UnsupportedError('Unsupported platform');
    }
  }
}