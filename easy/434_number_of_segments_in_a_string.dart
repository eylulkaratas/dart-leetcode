int countSegments(String s) {
  int segmentCount = 0;
  for (int i = 0; i < s.length; i++) {
    if ((i == 0 || s[i - 1] == ' ') && s[i] != ' ') {
      segmentCount++;
    }
  }
  return segmentCount;
}
