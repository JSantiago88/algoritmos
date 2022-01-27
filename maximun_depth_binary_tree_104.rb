# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    return 0 if root.nil?
    return 1 if root.left.nil? && root.right.nil?

    queue = [root]
    max = 0
    while queue.any?
        for i in 0..queue.length - 1
            node = queue.shift
            queue.push(node.left) if node.left
            queue.push(node.right) if node.right
        end
        max += 1
    end
    max
end


# Input: root = [3,9,20,null,null,15,7]
# Output: 3

root = TreeNode.new 3
root.left = TreeNode.new 9
root.right = TreeNode.new 20
root.right.left = TreeNode.new 15
root.right.right = TreeNode.new 7

puts max_depth(root)
