class Solution {
  int romanToInt(String s) {
    var res = 0;

    for (int i = 0; i < s.length; i++) {
      final int current = getValue(s[i]);
      final int next = i + 1 < s.length ? getValue(s[i + 1]) : 0;

      if (current > next) {
        res += current;
      } else {
        res += (next - current);
        i++;
      }
    }

    return res;
  }

  int getValue(String c) {
    switch (c) {
      case 'I':
        return 1;
      case 'V':
        return 5;
      case 'X':
        return 10;
      case 'L':
        return 50;
      case 'C':
        return 100;
      case 'D':
        return 500;
      case 'M':
        return 1000;
      default:
        return 0;
    }
  }
}
