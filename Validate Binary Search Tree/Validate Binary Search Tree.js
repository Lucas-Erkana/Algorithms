function isValidBST(root) {
    return isValidBSTHelper(root, -Infinity, Infinity);
}

function isValidBSTHelper(node, lower, upper) {
    if (node === null) {
        return true;
    }

    if (node.val <= lower || node.val >= upper) {
        return false;
    }

    return isValidBSTHelper(node.left, lower, node.val) && isValidBSTHelper(node.right, node.val, upper);
}

// Example usage
const root = {
    val: 5,
    left: {
        val: 1,
        left: null,
        right: null
    },
    right: {
        val: 4,
        left: {
            val: 3,
            left: null,
            right: null
        },
        right: {
            val: 6,
            left: null,
            right: null
        }
    }
};

console.log(isValidBST(root)); // Output: false

// Example usage2
const root2 = {
    val: 2,
    left: {
        val: 1,
        left: null,
        right: null
    },
    right: {
        val: 3,
        left: null,
        right: null
    }
};

console.log(isValidBST(root2)); // Output: true
