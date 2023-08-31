# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def kth_smallest(root, k)
    stack = []
    while root || !stack.empty?
        while root
            stack << root
            root = root.left
        end
        root = stack.pop
        k -= 1
        return root.val if k.zero?
        root = root.right
    end
end

# Example usage
root = TreeNode.new(3)
root.left = TreeNode.new(1)
root.right = TreeNode.new(4)
root.left.right = TreeNode.new(2)

puts kth_smallest(root, 1) # Output: 1


# Example usage
root = TreeNode.new(5)
root.left = TreeNode.new(3)
root.right = TreeNode.new(6)
root.left.left = TreeNode.new(2)
root.left.right = TreeNode.new(4)
root.left.left.left = TreeNode.new(1)

puts kth_smallest(root, 3) # Output: 3