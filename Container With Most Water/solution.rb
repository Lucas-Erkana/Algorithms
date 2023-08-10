# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    max_area = 0
  left = 0
  right = height.length - 1
  
  while left < right
      max_area = [max_area, [height[left], height[right]].min * (right - left)].max
      if height[left] < height[right]
          left += 1
      else
          right -= 1
      end
  end
  
  max_area  
end

height = [1,8,6,2,5,4,8,3,7]
result = max_area(height)
puts result # expected result is 49

height = [1,1]
result = max_area(height)
puts result # expected result is 1


height = [3,1,4,5,2,6]
result = max_area(height)
puts result # expected result is 15

height = [7,3,2,9,1]
result = max_area(height)
puts result # expected result is 21

height = [10,2,8,9,5,7,6]
result = max_area(height)
puts result # expected result is 36