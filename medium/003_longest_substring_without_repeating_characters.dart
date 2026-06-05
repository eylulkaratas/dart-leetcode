import 'dart:math';

int lengthOfLongestSubstring(String s) {
  Map<String, int> map = {};
  int maxLength = 0;
  int left = 0;
  for (int right = 0; right < s.length; right++) {
    if (map.containsKey(s[right])) {
      left = max(left, map[s[right]]! + 1);
    }
    map[s[right]] = right;
    maxLength = max(maxLength, right - left + 1);
  }
  return maxLength;
}
