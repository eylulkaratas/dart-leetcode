bool isPalindromeLinkedList(ListNode? head) {
  List<int> vals = [];
  ListNode? curr = head;
  while (curr != null) {
    vals.add(curr.val);
    curr = curr.next;
  }
  int front = 0;
  int back = vals.length - 1;
  while (front < back) {
    if (vals[front] != vals[back]) return false;
    front++;
    back--;
  }
  return true;
}
