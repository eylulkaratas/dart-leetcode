bool canConstruct(String ransomNote, String magazine) {
  List<int> counts = List.filled(26, 0);
  for (int i = 0; i < magazine.length; i++) {
    counts[magazine.codeUnitAt(i) - 97]++;
  }
  for (int i = 0; i < ransomNote.length; i++) {
    int index = ransomNote.codeUnitAt(i) - 97;
    counts[index]--;
    if (counts[index] < 0) return false;
  }
  return true;
}
