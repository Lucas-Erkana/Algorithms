class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def add_two_numbers(l1, l2)
  # Initialize the head of the result linked list
  head = ListNode.new(0)
  
  # Initialize current node, carry, and pointers for l1 and l2
  curr = head
  carry = 0
  p1 = l1
  p2 = l2
  
  # Traverse both linked lists until they reach the end
  while p1 || p2
    # Get the values of the current nodes, or 0 if they're nil
    val1 = p1 ? p1.val : 0
    val2 = p2 ? p2.val : 0
    
    # Calculate the sum of the current nodes' values and the carry from the previous sum
    sum = val1 + val2 + carry
    
    # Update the carry for the next sum if the sum is greater than or equal to 10
    carry = sum >= 10 ? 1 : 0
    
    # Create a new node for the result linked list with the ones digit of the sum
    curr.next = ListNode.new(sum % 10)
    
    # Move to the next nodes in both linked lists and the result linked list
    curr = curr.next
    p1 = p1.next if p1
    p2 = p2.next if p2
  end
  
  # If there's still a carry after traversing both linked lists, create a new node for it in the result linked list
  curr.next = ListNode.new(carry) if carry > 0
  
  # Convert the linked list to an array and return it
  result_array = []
  curr = head.next
  while curr
    result_array << curr.val
    curr = curr.next
  end
  result_array
end

#  Test Case 1:
  # Inputs
  l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
  l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))
  # Output
  puts add_two_numbers(l1, l2).inspect # Output: [7, 0, 8]
  # The sum of the input linked lists is [7, 0, 8]
#  Test Case 2:
  # Inputs
  l1 = ListNode.new(0)
  l2 = ListNode.new(0)
  # Output
  puts add_two_numbers(l1, l2).inspect # Output: [0]
  # The sum of the input linked lists is [0]

  
 # Test Case 3:
  # Inputs
  l1 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9)))))))
  l2 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9))))
  # Output
  puts add_two_numbers(l1, l2).inspect
  # The sum of the input linked lists is [8, 9, 9, 9, 0, 0, 0, 1]
  
 # Test Case 4:
  # Inputs
  l1 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9)))))))
  l2 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9))))
  # Output
  puts add_two_numbers(l1, l2).inspect
  # The sum of the input linked lists is [8, 9, 9, 9, 0, 0, 0, 1]
  
 # Test Case 5:
  # Inputs
  l1 = ListNode.new(0)
  l2 = ListNode.new(0)
  
  # Output
  puts add_two_numbers(l1, l2).inspect
  # The sum of the input linked lists is [0]