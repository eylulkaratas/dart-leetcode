class MyQueue {
  List<int> s1 = [];
  List<int> s2 = [];

  void push(int x) {
    s1.add(x);
  }

  int pop() {
    peek();
    return s2.removeLast();
  }

  int peek() {
    if (s2.isEmpty) {
      while (s1.isNotEmpty) {
        s2.add(s1.removeLast());
      }
    }
    return s2.last;
  }

  bool empty() {
    return s1.isEmpty && s2.isEmpty;
  }
}
