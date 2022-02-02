# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
   return -1 if head.nil? || n.nil?

  count = 1
  list = head.dup
  while list.next
    list = list.next
    count +=1
  end
  return [] if count == 1 && n == 1
  n = n%count
  count -= n
  result = []
  while count > 0
    result << head.val
    head = head.next
    if count == 1
      if head&.next&.val
        result << head.next.val
      elsif head&.val && n != 1
        result << head.val
      end
      break
    end
    count -= 1
  end
  result
end

# Input: head = [1,2,3,4,5], n = 2
# Output: [1,2,3,5]

head = ListNode.new(1)
head.next = ListNode.new(2)
head.next.next = ListNode.new(3)
head.next.next.next = ListNode.new(4)
head.next.next.next.next = ListNode.new(5)
n = 2
p remove_nth_from_end(head, n)
