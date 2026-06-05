class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    Map<String, String> pairs = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    for (var char in s.split('')) {
      if (char == '(' || char == '{' || char == '[') {
        stack.add(char);
      } else {
        if (stack.isEmpty || stack.removeLast() != pairs[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}
