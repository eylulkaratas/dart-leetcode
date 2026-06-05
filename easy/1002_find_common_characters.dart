class Solution {
  List<String> commonChars(List<String> words) {
    List<int> common = List.filled(26, 100);

    for (String word in words) {
      List<int> count = List.filled(26, 0);

      for (int i = 0; i < word.length; i++) {
        count[word.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      }

      for (int i = 0; i < 26; i++) {
        common[i] = common[i] < count[i] ? common[i] : count[i];
      }
    }

    List<String> result = [];

    for (int i = 0; i < 26; i++) {
      while (common[i] > 0) {
        result.add(
          String.fromCharCode(i + 'a'.codeUnitAt(0)),
        );
        common[i]--;
      }
    }

    return result;
  }
}
