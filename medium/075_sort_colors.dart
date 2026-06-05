void sortColors(List<int> nums) {
  int p0 = 0, curr = 0;
  int p2 = nums.length - 1;

  while (curr <= p2) {
    if (nums[curr] == 0) {
      int temp = nums[p0];
      nums[p0++] = nums[curr];
      nums[curr++] = temp;
    } else if (nums[curr] == 2) {
      int temp = nums[curr];
      nums[curr] = nums[p2];
      nums[p2--] = temp;
    } else {
      curr++;
    }
  }
}
