abstract interface class LinkedList<T> {
  void addFirst(T element);

  void addLast(T element);

  T removeFirst();

  T removeLast();

  T getFirst();

  T getLast();

  int size();
}
