# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)

end


nums1 = [1, 2, 3] # input array
nums2 = [4, 5, 6] # input second array
result = find_median_sorted_arrays(nums1, nums2)
  
puts result #expected result 3.5

nums1 = [1, 3] # input array
nums2 = [2]    # input second array
result = find_median_sorted_arrays(nums1, nums2)
puts result #expected result 2

nums1 = [1, 2]   # input array
nums2 = [3, 4]   # input second array
result = find_median_sorted_arrays(nums1, nums2)
puts result # expected result 2.5