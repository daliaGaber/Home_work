/**
 Given the head of a singly linked list, reverse the list, and return the reversed list.
 */


void main() {
  ListNode head = ListNode(1);
  head.next = ListNode(2);
  head.next!.next = ListNode(3);
  Solution sol = Solution();
  ListNode? reversedHead = sol.reverseList(head);
  ListNode? temp = reversedHead;
  while (temp != null) {
    print(temp.val);
    temp = temp.next;
  }
}

class ListNode {
   int val;
   ListNode? next;
   ListNode([this.val = 0, this.next]);
 }
 
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;
    while (current != null) {
      ListNode? nextTemp = current.next;
      current.next = prev;
      prev = current; 
      current = nextTemp; 
    }
    return prev;
  }
}
