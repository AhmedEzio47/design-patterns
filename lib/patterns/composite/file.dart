abstract class File {
  final String name;

  const File(this.name);

  String ls();

  void add(File file);

  bool remove(File file);

  List<File> getFiles();
}
