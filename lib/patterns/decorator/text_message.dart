import 'package:design_patterns/patterns/decorator/index.dart';

final class TextMessage implements Message {
  String content;

  TextMessage(this.content);

  @override
  String getContent() {
    return content;
  }
}
