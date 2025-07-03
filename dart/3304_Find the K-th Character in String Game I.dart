import 'dart:math' ;

void main() {
  Solution solution = Solution();
  int k = 5;
  String result = solution.kthCharacter(k);
  print('The $k-th character is: ${result[k-1]}');
  print('The $k-th character is: ${result}');

}

class Solution {
  String kthCharacter(int k) {
    int stepCount = (log(k) / log(2)).ceil();

    String result = 'a';


    for(int i =1 ; i<=stepCount ;i++){
      result += result.runes.map((r) => String.fromCharCode(r + 1)).join('');

    }

    return result[k-1];
  }
}
