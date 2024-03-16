abstract interface class FifoCollection<T> {
  void offer(T element);

  T poll();

  T peek();
}
