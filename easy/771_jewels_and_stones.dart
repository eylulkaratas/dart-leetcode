int numJewelsInStones(String jewels, String stones) {
  int count = 0;
  Set<String> jewelSet = jewels.split('').toSet();
  for (int i = 0; i < stones.length; i++) {
    if (jewelSet.contains(stones[i])) {
      count++;
    }
  }
  return count;
}
