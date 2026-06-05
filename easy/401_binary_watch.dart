List<String> readBinaryWatch(int turnedOn) {
  List<String> result = [];
  int countBits(int n) {
    int count = 0;
    while (n > 0) {
      if ((n & 1) == 1) count++;
      n >>= 1;
    }
    return count;
  }

  for (int h = 0; h < 12; h++) {
    for (int m = 0; m < 60; m++) {
      if (countBits(h) + countBits(m) == turnedOn) {
        String minutes = m < 10 ? "0$m" : "$m";
        result.add("$h:$minutes");
      }
    }
  }
  return result;
}
