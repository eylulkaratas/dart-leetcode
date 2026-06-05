void rotate(List<int> nums, int k) {
  k %= nums.length;
  void reverse(List<int> arr, int start, int end) {
    while (start < end) {
      int temp = arr[start];
      arr[start] = arr[end];
      arr[end] = temp;
      start++;
      end--;
    }
  }
  reverse(nums, 0, nums.length - 1);
  reverse(nums, 0, k - 1);
  reverse(nums, k, nums.length - 1);
}
