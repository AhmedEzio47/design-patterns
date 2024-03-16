import 'package:design_patterns/patterns/bridge/index.dart';

class Queue<T> implements FifoCollection<T> {
  Queue(this.linkedList);

  final LinkedList<T> linkedList;

  @override
  void offer(T element) {
    linkedList.addLast(element);
  }

  @override
  peek() {
    return linkedList.getFirst();
  }

  @override
  T poll() {
    return linkedList.removeFirst();
  }
}
