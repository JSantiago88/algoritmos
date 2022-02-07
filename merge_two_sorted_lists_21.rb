class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

MAX_NUMBER = 2**30.freeze

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return [] if l1.nil? && l2.nil?

  output = []
  i = 0
  while l1 || l2
    val1 = l1&.val ? l1.val : MAX_NUMBER
    val2 = l2&.val ? l2.val : MAX_NUMBER
    minimo = [val1, val2].min
    output << minimo
    if minimo == val1 && minimo == val2
      output << val2
      l1 = l1&.next
      l2 = l2&.next
      next
    elsif minimo == val1
      l1 = l1&.next
    else
      l2 = l2&.next
    end
  end
  output
end

# Input: l1 = [1,2,4], l2 = [1,3,4]
# Output: [1,1,2,3,4,4]

l1 = ListNode.new 1
l1.next = ListNode.new 2
l1.next.next = ListNode.new 4
l2 = ListNode.new 1
l2.next = ListNode.new 3
l2.next.next = ListNode.new 4

p merge_two_lists(l1, l2)
