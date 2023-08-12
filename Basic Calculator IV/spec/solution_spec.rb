require_relative '../solution'
require 'rspec'

describe 'remove_nth_from_end example 1' do
  context 'when given a linked list and n' do
    it 'removes the nth node from the end of the linked list' do
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
  end
end

describe 'remove_nth_from_end example 2' do
  context 'when given a linked list and n' do
    it 'removes the nth node from the end of the linked list' do
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
  end
end

describe 'remove_nth_from_end example 3' do
  context 'when given a linked list and n' do
    it 'removes the nth node from the end of the linked list' do
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
    end
end

describe 'remove_nth_from_end example 4' do
  context 'when given a linked list and n' do
    it 'removes the nth node from the end of the linked list' do
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
    end

end

describe 'remove_nth_from_end example 5' do
  context 'when given a linked list and n' do
    it 'removes the nth node from the end of the linked list' do
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