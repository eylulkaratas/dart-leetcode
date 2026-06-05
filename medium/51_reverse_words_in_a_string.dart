String reverseWordsMedium(String s) {
  List<String> words = s.trim().split(RegExp(r'\s+'));
  return words.reversed.join(' ');
}
