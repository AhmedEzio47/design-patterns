import '../../index.dart';

class Composite {
  static File createTree1() {
    final root = Directory('root');
    final home = Directory('home');
    final downloads = Directory('downloads');
    final file1 = BinaryFile('file1', 100);
    final file2 = BinaryFile('file2', 200);
    final file3 = BinaryFile('file3', 150);

    downloads.add(file1);
    downloads.add(file2);
    home.add(downloads);
    root.add(home);
    home.add(file3);

    return root;
  }

  static File createTree2() => BinaryFile('temp', 120);
}
