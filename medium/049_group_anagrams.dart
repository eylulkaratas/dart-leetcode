List<List<String>> groupAnagrams(List<String> strs) {
  Map<String, List<String>> ans = {};
  for (String s in strs) {
    List<String> chars = s.split('')..sort();
    String key = chars.join('');
    if (!ans.containsKey(key)) ans[key] = [];
    ans[key]!.add(s);
  }
  return ans.values.toList();
}
