import 'dart:convert';

import '../../index.dart';

final class Base64EncodedMessage implements Message {
  final Message message;

  Base64EncodedMessage(this.message);

  @override
  String getContent() {
    return base64Encode(utf8.encode(message.getContent()));
  }
}
