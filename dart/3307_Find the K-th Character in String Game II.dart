

void main() {
  Solution solution = Solution();
  int k = 10;
  String result = solution.kthCharacter(k, [0, 1, 0, 1]);
  print('The $k-th character is: ${result}');

  int k2 = 5;
  String result2 = solution.kthCharacter(k2, [0,0,0]);
  //print('The $k-th character is: ${result[k-1]}');
  print('The $k-th character is: ${result2}');
}
class Solution {
  String kthCharacter(int k, List<int> operations) {
    k -= 1;
    int shift = 0;

    for (int i = operations.length - 1; i >= 0; i--) {
      int len = 1 << i;

      if (k >= len) {
        k -= len;
        if (operations[i] == 1) {
          shift += 1;
        }
      }
    }

    int charCode = 'a'.codeUnitAt(0) + (shift % 26);
    return String.fromCharCode(charCode);
  }
}