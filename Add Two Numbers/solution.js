// Definition for singly-linked list.
// class ListNode {
//     constructor(val = 0, next = null) {
//         this.val = val;
//         this.next = next;
//     }
// }

/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
function addTwoNumbers(l1, l2) {
    let carry = 0;
    let result = new ListNode(0);
    let current = result;

    while (l1 || l2 || carry) {
        let sum = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry;
        carry = Math.floor(sum / 10);
        current.next = new ListNode(sum % 10);
        current = current.next;
        l1 = l1 ? l1.next : null;
        l2 = l2 ? l2.next : null;
    }

    return result.next;
}

// Test Case 1:
// Inputs
let l1 = new ListNode(2, new ListNode(4, new ListNode(3)));
let l2 = new ListNode(5, new ListNode(6, new ListNode(4)));
// Output
console.log(addTwoNumbers(l1, l2)); // Output: [7, 0, 8]
// The sum of the input linked lists is [7, 0, 8]

// Test Case 2:
// Inputs
l1 = new ListNode(0);
l2 = new ListNode(0);
// Output
console.log(addTwoNumbers(l1, l2)); // Output: [0]
// The sum of the input linked lists is [0]

// Test Case 3:
// Inputs
l1 = new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9)))))));
l2 = new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9))));
// Output
console.log(addTwoNumbers(l1, l2));
// The sum of the input linked lists is [8, 9, 9, 9, 0, 0, 0, 1]

// Test Case 4:
// Inputs
l1 = new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9)))))));
l2 = new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9))));
// Output
console.log(addTwoNumbers(l1, l2));
// The sum of the input linked lists is [8, 9, 9, 9, 0, 0, 0, 1]

// Test Case 5:
// Inputs
l1 = new ListNode(0);
l2 = new ListNode(0);

// Output
console.log(addTwoNumbers(l1, l2));
// The sum of the input linked lists is [0]

module.exports = addTwoNumbers;