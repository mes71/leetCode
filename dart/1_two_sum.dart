void main() {
  List<int> ss = [2, 7, 11, 15];
 print(twoSum([11, 7, 11, 2],9));
}
List<int> twoSum(List<int> nums, int target) {
  final l = nums.length;
  for (int offset = 1; offset < l; offset++) {
    final unvisited = l - offset;
    for (int pointer = 0; pointer < unvisited; pointer++) {
      final j = pointer + offset;
      if (nums[pointer] + nums[j] == target) {
        return [pointer, j];
      }
    }
  }
  return [];
}