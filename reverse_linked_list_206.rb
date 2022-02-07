# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return [] if head.nil?

  dequeue = []
  while head
      dequeue.unshift(head.val)
      head = head.next
  end
  dequeue
end

# Input: head = [1,2]
# Output: [2,1]
head = ListNode.new 1
head.next = ListNode.new 2
reverse_list(head)
