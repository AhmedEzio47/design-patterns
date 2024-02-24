import 'package:design_patterns/enums/platforms.dart';
import 'package:design_patterns/patterns/abstract_factory/button.dart';
import 'package:design_patterns/patterns/abstract_factory/text_field.dart';

abstract interface class PlatformWidgetFactory {
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
