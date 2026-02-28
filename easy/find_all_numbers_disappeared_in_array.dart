class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    
    for (int i = 0; i < nums.length; i++) {
      int val = nums[i].abs();
      int idx = val - 1;

      if (nums[idx] > 0) {
        nums[idx] = -nums[idx];
      }
    }


    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > 0) {
        result.add(i + 1);
      }
    }

    return result;
  }
}
