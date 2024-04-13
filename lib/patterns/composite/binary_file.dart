import 'package:design_patterns/patterns/composite/file.dart';

final class BinaryFile extends File {
  final int size;

  BinaryFile(super.name, this.size);

  @override
  void add(File file) {
    throw UnsupportedError('The leaf node does not support this operation');
  }

  @override
  List<File> getFiles() {
    throw UnsupportedError('The leaf node does not support this operation');
  }

  @override
  String ls() {
    return ('File: $name, size: $size bytes\n');
  }

  @override
  bool remove(File file) {
    throw UnsupportedError('The leaf node does not support this operation');
  }
}
