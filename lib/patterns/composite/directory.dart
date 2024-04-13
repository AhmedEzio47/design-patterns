import 'package:design_patterns/patterns/composite/file.dart';

final class Directory extends File {
  final List<File> files = [];

  Directory(String name) : super(name);

  @override
  void add(File file) {
    files.add(file);
  }

  @override
  List<File> getFiles() {
    return files;
  }

  @override
  String ls() {
    String result = '';
    result += 'Directory: $name\n';
    for (var file in files) {
      result += file.ls();
    }
    return result;
  }

  @override
  bool remove(File file) {
    return files.remove(file);
  }
}
