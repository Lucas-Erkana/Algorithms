require_relative '../solution'
require 'rspec'

describe '#find_median_sorted_arrays' do
  context 'when nums1 = [1, 2, 3] and nums2 = [4, 5, 6]' do
    it 'returns the correct median' do
      nums1 = [1, 2, 3]
      nums2 = [4, 5, 6]
      result = find_median_sorted_arrays(nums1, nums2)
      expect(result).to eq(3.5)
    end
  end
end

describe '#find_median_sorted_arrays' do
  context 'when nums1 = [1, 3] and nums2 = [2]' do
    it 'returns the correct median' do
      nums1 = [1, 3]
      nums2 = [2]
      result = find_median_sorted_arrays(nums1, nums2)
      expect(result).to eq(2)
    end
  end
end

describe '#find_median_sorted_arrays' do
  context 'when nums1 = [1, 2] and nums2 = [3, 4]' do
    it 'returns the correct median' do
      nums1 = [1, 2]
      nums2 = [3, 4]
      result = find_median_sorted_arrays(nums1, nums2)
      expect(result).to eq(2.5)
    end
  end
end
