/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode res = ListNode();
    ListNode current = res;
    int carry = 0;
    while (l1 != null || l2 != null || carry != 0) {
      int tmp1 = l1?.val ?? 0;
      int tmp2 = l2?.val ?? 0;
      int sum = tmp1 + tmp2 + carry;
      carry = sum ~/ 10;

      current.next = ListNode(sum%10);
      current = current.next!;

      l1 = l1?.next;
      l2 = l2?.next;
    }

    return res.next;
  }
}

void main() {
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));
  Solution solution = Solution();
  ListNode? result = solution.addTwoNumbers(l1, l2);

}
