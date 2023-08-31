# Definition for singly-linked list.
 class ListNode
    attr_accessor :val, :next
     def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
     end
 end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
    nodes = []
    
    # Collect all nodes from each linked-list into an array
    lists.each do |list|
        while list
            nodes << list
            list = list.next
        end
    end
    
    # Sort the nodes array based on their values
    nodes.sort_by!(&:val)
    
    # Create a dummy node for the result linked-list
    dummy = ListNode.new
    current = dummy

    # Iterate through the sorted nodes and build the result linked-list
    nodes.each do |node|
        current.next = node
        current = current.next
    end
    
    # Set the last node's next to nil
    current.next = nil

    # Return the result linked-list starting from the dummy node's next
    dummy.next
end

# Test case 1

lists = [[1,4,5],[1,3,4],[2,6]]
result = merge_k_lists(lists)

puts result 


#exected output [1,1,2,3,4,4,5,6]


# Test case 2
lists = []
result = merge_k_lists(lists)

puts result  #exected output []

# Test case 3
lists = [[]]
result = merge_k_lists(lists)

puts result  #exected output []

#test case 4

#Add a totally different test case from the 3 above