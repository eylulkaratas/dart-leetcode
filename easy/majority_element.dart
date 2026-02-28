class Solution {
  int majorityElement(List<int> nums) {
    Map<int, int> count = {};

    for (int num in nums) {
      count[num] = (count[num] ?? 0) + 1;
      if (count[num]! > nums.length ~/ 2) {
        return num;
      }
    }

    return -1;
  }
}
