List<List<int>> threeSum(List<int> nums) {
  nums.sort();
  List<List<int>> res = [];
  for (int i = 0; i < nums.length && nums[i] <= 0; ++i) {
    if (i == 0 || nums[i - 1] != nums[i]) {
      int low = i + 1, high = nums.length - 1;
      while (low < high) {
        int sum = nums[i] + nums[low] + nums[high];
        if (sum < 0) {
          low++;
        } else if (sum > 0) {
          high--;
        } else {
          res.add([nums[i], nums[low++], nums[high--]]);
          while (low < high && nums[low] == nums[low - 1]) {
            low++;
          }
        }
      }
    }
  }
  return res;
}
