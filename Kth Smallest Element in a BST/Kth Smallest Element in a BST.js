// Definition for a binary tree node.
class TreeNode {
    constructor(val = 0, left = null, right = null) {
        this.val = val;
        this.left = left;
        this.right = right;
    }
}

function kthSmallest(root, k) {
    const stack = [];
    while (root || stack.length > 0) {
        while (root) {
            stack.push(root);
            root = root.left;
        }
        root = stack.pop();
        k -= 1;
        if (k === 0) {
            return root.val;
        }
        root = root.right;
    }
}

// Example usage
const root1 = new TreeNode(3);
root1.left = new TreeNode(1);
root1.right = new TreeNode(4);
root1.left.right = new TreeNode(2);

console.log(kthSmallest(root1, 1)); // Output: 1

const root2 = new TreeNode(5);
root2.left = new TreeNode(3);
root2.right = new TreeNode(6);
root2.left.left = new TreeNode(2);
root2.left.right = new TreeNode(4);
root2.left.left.left = new TreeNode(1);

console.log(kthSmallest(root2, 3)); // Output: 3
