class Solution {
  bool isAnagram(String s, String t) {
    List<String> sList = s.split('')..sort();
    List<String> tList = t.split('')..sort();

    return sList.join() == tList.join();
  }
}
