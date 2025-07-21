class Solution {
  bool isValid(String s) {
    if (s.length.isOdd) {
      return false;
    }

    final stack = <String>[];
    for (int i = 0; i < s.length; i++) {
      final char = s[i];
      if (char == '(' || char == '[' || char == '{') {
        stack.add(char);
      } else {
        if (stack.isEmpty) {
          return false;
        }
        final top = stack.removeLast();
        if ((top != '(' && char == ')') ||
            (top != '{' && char == '}') ||
            (top != '[' && char == ']')) {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}

