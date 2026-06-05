bool isHappy(int n) {
  int getNext(int number) {
    int totalSum = 0;
    while (number > 0) {
      int d = number % 10;
      number = number ~/ 10;
      totalSum += d * d;
    }
    return totalSum;
  }

  Set<int> seen = {};
  while (n != 1 && !seen.contains(n)) {
    seen.add(n);
    n = getNext(n);
  }
  return n == 1;
}
