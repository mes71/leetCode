void main() {
  List<int> ss = [21, 7, 11, 15, 2];
  print(twoSum(ss, 9));
}

List<int> twoSum(List<int> nums, int target) {
  final Map<int, int> seen = {};
  for (int i = 0; i < nums.length; i++) {
    final complement = target - nums[i];
    if (seen.containsKey(complement)) {
      return [seen[complement]!, i];
    }
    seen[nums[i]] = i;
  }

  return [];
}
