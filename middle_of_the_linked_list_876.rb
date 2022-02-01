class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  return -1 if head.nil?
  return head if head.next.nil?

  # Revisión: tb se puede hacer sin utilizar memoria extra, se debe iterar por la lista 2 veces:
  # 1 para saber el tamaño de la lista(par o impar) y apartir de ese len tomar el nodo correcto en la segunda iteracion
  arr = []
  while head.next
    arr << head
    head = head.next
    if head.next.nil?
      arr << head
      break
    end
  end
  index = arr.size / 2
  arr[index]
end

# Input: head = [1,2,3,4,5]
# Output: [3,4,5]
# Explanation: The middle node of the list is node 3.

head = ListNode.new(1)
head.next = ListNode.new(2)
head.next.next = ListNode.new(3)
head.next.next.next = ListNode.new(4)
head.next.next.next.next = ListNode.new(5)

p middle_node(head)
