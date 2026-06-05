List<int> topKFrequent(List<int> nums, int k) {
  Map<int, int> count = {};
  for (int num in nums) {
    count[num] = (count[num] ?? 0) + 1;
  }
  List<int> keys = count.keys.toList();
  keys.sort((a, b) => count[b]!.compareTo(count[a]!));
  return keys.sublist(0, k);
}
