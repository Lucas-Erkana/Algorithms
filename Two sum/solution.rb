# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
        # Create a hash to store the index of each number in nums
        num_index = {}
        
        # Iterate through nums
        nums.each_with_index do |num, index|
          # Check if the complement of num exists in num_index
          complement = target - num
          if num_index.key?(complement)
            # If complement exists, return the indices of num and complement
            return [num_index[complement], index]
          end
          
          # Add num and its index to num_index
          num_index[num] = index
        end
        
        # If no solution is found, return an empty array
        return []
      end

nums = [2, 7, 11, 15]
target = 9
# Call the two_sum function
result = two_sum(nums, target)

# Example output
puts result.inspect   # [0, 1]