class Solution {
  bool isValid(String s) {
    if (s.length % 2 != 0) return false;
    for (int i = 0; i < s.length; i++) {
      for (int j = 1; j < s.length; j++) {}
    }
  }

  bool _isParid(String strat, String end) {
    return strat == '(' && end == ')';
  }
}

void main() {
  Solution solution = Solution();

  print(solution.isValid('(())'));
  print(solution.isValid('()[]{}'));
  print(solution.isValid('([)]'));
  print(solution.isValid('{[]}'));
  print(solution.isValid('('));
}
