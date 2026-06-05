class Solution {
  void moveZeroes(List<int> nums) {
    int index = 0;

    for (int num in nums) {
      if (num != 0) {
        nums[index++] = num;
      }
    }

    while (index < nums.length) {
      nums[index++] = 0;
    }
  }
}
