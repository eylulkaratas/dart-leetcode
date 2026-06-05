class Solution {
  int lengthOfLastWord(String s) {
    List<String> words =
        s.trim().split(RegExp(r'\s+'));

    return words.last.length;
  }
}
