import 'package:design_patterns/patterns/bridge/index.dart';

final class SinglyLinkedList<T> implements LinkedList<T> {
  Node<T>? _head;
  Node<T>? _tail;
  int _size = 0;

  @override
  void addFirst(T element) {
    final newNode = Node(element);
    if (_head == null) {
      _head = newNode;
      _tail = newNode;
    } else {
      newNode.next = _head;
      _head = newNode;
    }
    _size++;
  }

  @override
  void addLast(T element) {
    final newNode = Node(element);
    if (_tail == null) {
      _head = newNode;
      _tail = newNode;
    } else {
      _tail!.next = newNode;
      _tail = newNode;
    }
    _size++;
  }

  @override
  T getFirst() {
    if (_head == null) {
      throw StateError('No such element');
    }
    return _head!.data;
  }

  @override
  T getLast() {
    if (_tail == null) {
      throw StateError('No such element');
    }
    return _tail!.data;
  }

  @override
  T removeFirst() {
    if (_head == null) {
      throw StateError('No such element');
    }
    final data = _head!.data;
    _head = _head!.next;
    _size--;
    return data;
  }

  @override
  T removeLast() {
    if (_tail == null) {
      throw StateError('No such element');
    }
    final data = _tail!.data;
    if (_head == _tail) {
      _head = null;
      _tail = null;
    } else {
      var current = _head;
      while (current!.next != _tail) {
        current = current.next;
      }
      _tail = current;
      _tail!.next = null;
    }
    _size--;
    return data;
  }

  @override
  int size() => _size;
}
