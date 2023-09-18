def length_of_longest_substring(s)
    max_len = 0 # Step 1
    left = 0 # Step 2
    char_index_map = {} # Step 3
  
    s.each_char.with_index do |c, i| # Step 4
      if char_index_map.key?(c) && char_index_map[c] >= left # Check if the character already exists in the hash and its index is greater than or equal to left
        left = char_index_map[c] + 1 # If so, update left to be one more than the index of the character in the hash
      end
      char_index_map[c] = i # Update the index of the character in the hash
      max_len = [max_len, i - left + 1].max # Update max_len to be the maximum value between its current value and i - left + 1
    end
  
    max_len # Step 5: Return max_len
  end
  
  puts length_of_longest_substring("abcabcbb") # Output: 3
  puts length_of_longest_substring("bbbbb") # Output: 1
  puts length_of_longest_substring('pwwkew') # Output: 3
  