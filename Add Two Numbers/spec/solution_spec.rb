require_relative '../solution'
require 'rspec'

RSpec.describe '#add_two_numbers' do
  context 'when given two linked lists' do
    it 'returns the correct sum for Test Case 1' do
      l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
      l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))
      expect(add_two_numbers(l1, l2)).to eq([7, 0, 8])
    end

    it 'returns the correct sum for Test Case 2' do
      l1 = ListNode.new(0)
      l2 = ListNode.new(0)
      expect(add_two_numbers(l1, l2)).to eq([0])
    end

    it 'returns the correct sum for Test Case 3' do
      l1 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9)))))))
      l2 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9))))
      expect(add_two_numbers(l1, l2)).to eq([8, 9, 9, 9, 0, 0, 0, 1])
    end

    it 'returns the correct sum for Test Case 4' do
      l1 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9)))))))
      l2 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9))))
      expect(add_two_numbers(l1, l2)).to eq([8, 9, 9, 9, 0, 0, 0, 1])
    end

    it 'returns the correct sum for Test Case 5' do
      l1 = ListNode.new(0)
      l2 = ListNode.new(0)
      expect(add_two_numbers(l1, l2)).to eq([0])
    end
  end
end
