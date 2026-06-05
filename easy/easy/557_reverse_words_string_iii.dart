class Solution {
  String reverseWords(String s) {
    return s
        .split(' ')
        .map((word) => word.split('').reversed.join())
        .join(' ');
  }
}
