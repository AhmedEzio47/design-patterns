import 'package:design_patterns/patterns/decorator/index.dart';

/// This class represents a concrete decorator class that adds HTML encoding to the message.
class HtmlEncodedMessage implements Message {
  Message message;

  HtmlEncodedMessage(this.message);

  @override
  String getContent() {
    return message.getContent().replaceAll('<', '&lt;').replaceAll('>', '&gt;');
  }
}
