def move_zeroes(nums)
    last_non_zero_index = 0
    
    # Iterate through the array
    for i in 0...nums.length
      # If the current element is not zero
      if nums[i] != 0
        # Move the current element to the front of the array
        nums[last_non_zero_index] = nums[i]
        last_non_zero_index += 1
      end
    end
    
    # Fill the rest of the array with zeros
    for i in last_non_zero_index...nums.length
      nums[i] = 0
    end
  end
  
  nums = [0, 1, 0, 3, 12]
  puts "Original Array: #{nums}"
  move_zeroes(nums)
  puts "Modified Array: #{nums}"
  