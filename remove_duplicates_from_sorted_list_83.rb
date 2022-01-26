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
def delete_duplicates(head)
    return [] if head.nil?
    return [head.val] if head.next.nil?
    mapa = {}
    resultado = []
    while head.next
        if mapa.key?(head.val)
            head = head.next
            resultado << head.val if head.next.nil? && !mapa.key?(head.val)
            next
        end
        mapa[head.val] ||= head.val
        resultado << head.val
        head = head.next
        resultado << head.val if head.next.nil? && !mapa.key?(head.val)
    end
    resultado
end

head = ListNode.new 1
head.next = ListNode.new 1
head.next.next = ListNode.new 2
head.next.next.next = ListNode.new 3
head.next.next.next.next = ListNode.new 3
puts delete_duplicates(head)
