# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {array} head
# @param {Integer} n
# @return {array}

# Define a helper method to convert an array to a ListNode object
def array_to_listnode(arr)
   # write code here to convert array to ListNode object

end

# Define a helper method to convert a ListNode object to an array
def listnode_to_array(head)
  # write code here to convert object to an array

end

# Define the remove_nth_from_end function
def remove_nth_from_end(head, n)
  #write code here
  
end

#Test Case 1
head = [1, 2, 3, 4, 5]
n = 2
# Convert the array to a ListNode object
head=array_to_listnode(head)
result = remove_nth_from_end(head, n)
# Convert the ListNode object back to an array
result_array = listnode_to_array(result)
# Output
puts result_array.inspect
# The linked list after removing the 2nd node from the end is [1, 2, 3, 5]

#Test Case 2
head = [1]
n = 1
# Convert the array to a ListNode object
head = array_to_listnode(head)
result = remove_nth_from_end(head, n)
# Convert the ListNode object back to an array
result_array = listnode_to_array(result)
# Output
puts result_array.inspect
# The linked list after removing the 1st node from the end is []

#Test Case 3
head = [1, 2]
n = 1
# Convert the array to a ListNode object
head = array_to_listnode(head)
result = remove_nth_from_end(head, n)
# Convert the ListNode object back to an array
result_array = listnode_to_array(result)
# Output
puts result_array.inspect
# The linked list after removing the 1st node from the end is [1]


#Test Case 4
head = [1, 2]
n = 2
# Convert the array to a ListNode object
head = array_to_listnode(head)
result = remove_nth_from_end(head, n)
# Convert the ListNode object back to an array
result_array = listnode_to_array(result)
# Output
puts result_array.inspect
# The linked list after removing the 2nd node from the end is [2]

#Test Case 5
head = [1, 2, 3, 4, 5]
n = 5
# Convert the array to a ListNode object
head = array_to_listnode(head)
result = remove_nth_from_end(head, n)
# Convert the ListNode object back to an array
result_array = listnode_to_array(result)
# Output
puts result_array.inspect
# The linked list after removing the 5th node from the end is [2, 3, 4, 5]
