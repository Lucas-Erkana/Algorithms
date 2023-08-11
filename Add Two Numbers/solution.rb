# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    
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