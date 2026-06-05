class Solution {
  int thirdMax(List<int> nums) {
    var unique = nums.toSet().toList();
    unique.sort();

    if (unique.length < 3) {
      return unique.last;
    }

    return unique[unique.length - 3];
  }
}
