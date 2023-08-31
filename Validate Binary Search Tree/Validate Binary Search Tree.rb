# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def is_valid_bst(root)
    valid_bst_helper(root, -Float::INFINITY, Float::INFINITY)
end

def valid_bst_helper(node, lower, upper)
    return true if node.nil?

    if node.val <= lower || node.val >= upper
        return false
    end

    valid_bst_helper(node.left, lower, node.val) && valid_bst_helper(node.right, node.val, upper)
end

# Example usage
root = TreeNode.new(5)
root.left = TreeNode.new(1)
root.right = TreeNode.new(4)
root.right.left = TreeNode.new(3)
root.right.right = TreeNode.new(6)

puts is_valid_bst(root) # Output: false


# Example usage
root = TreeNode.new(2)
root.left = TreeNode.new(1)
root.right = TreeNode.new(3)

puts is_valid_bst(root) # Output: true