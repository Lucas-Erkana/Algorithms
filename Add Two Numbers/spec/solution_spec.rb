require_relative '../solution'
require 'rspec'

describe 'remove_nth_from_end' do
  context 'when given a linked list and n' do
    it 'removes the nth node from the end of the linked list for Test Case 1' do
      # Test Case 1
      head = [1, 2, 3, 4, 5]
      n = 2
      # Convert the array to a ListNode object
      head = array_to_listnode(head)
      result = remove_nth_from_end(head, n)
      # Convert the ListNode object back to an array
      result_array = listnode_to_array(result)
      expect(result_array).to eq([1, 2, 3, 5])
    end

    it 'removes the nth node from the end of the linked list for Test Case 2' do
      # Test Case 2
      head = [1]
      n = 1
      # Convert the array to a ListNode object
      head = array_to_listnode(head)
      result = remove_nth_from_end(head, n)
      # Convert the ListNode object back to an array
      result_array = listnode_to_array(result)
      expect(result_array).to eq([])
    end

    it 'removes the nth node from the end of the linked list for Test Case 3' do
      # Test Case 3
      head = [1, 2]
      n = 1
      # Convert the array to a ListNode object
      head = array_to_listnode(head)
      result = remove_nth_from_end(head, n)
      # Convert the ListNode object back to an array
      result_array = listnode_to_array(result)
      expect(result_array).to eq([1])
    end

    it 'removes the nth node from the end of the linked list for Test Case 4' do
      # Test Case 4
      head = [1, 2]
      n = 2
      # Convert the array to a ListNode object
      head = array_to_listnode(head)
      result = remove_nth_from_end(head, n)
      # Convert the ListNode object back to an array
      result_array = listnode_to_array(result)
      expect(result_array).to eq([2])
    end

    it 'removes the nth node from the end of the linked list for Test Case 5' do
      # Test Case 5
      head = [1, 2, 3, 4, 5]
      n = 5
      # Convert the array to a ListNode object
      head = array_to_listnode(head)
      result = remove_nth_from_end(head, n)
      # Convert the ListNode object back to an array
      result_array = listnode_to_array(result)
      expect(result_array).to eq([2, 3, 4, 5])
    end
  end
end
