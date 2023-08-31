class MedianFinder
    def initialize
      @max_heap = MaxHeap.new  # Max heap to store the smaller half of the numbers
      @min_heap = MinHeap.new  # Min heap to store the larger half of the numbers
    end
  
    def add_num(num)
      # Add the number to the appropriate heap
      if @max_heap.size == 0 || num <= @max_heap.peek
        @max_heap.push(num)
      else
        @min_heap.push(num)
      end
  
      # Rebalance the heaps if necessary
      if @max_heap.size - @min_heap.size > 1
        @min_heap.push(@max_heap.pop)
      elsif @min_heap.size - @max_heap.size > 1
        @max_heap.push(@min_heap.pop)
      end
    end
  
    def find_median
      # Determine the sizes of the heaps
      total_size = @max_heap.size + @min_heap.size
      is_even = total_size % 2 == 0
  
      # Calculate the median based on the sizes of the heaps
      if is_even
        (@max_heap.peek + @min_heap.peek) / 2.0
      else
        @max_heap.size > @min_heap.size ? @max_heap.peek : @min_heap.peek
      end
    end
  end
  
  # Heap implementation for the max and min heaps
  class MaxHeap
    def initialize
      @heap = []
    end
  
    def push(val)
      @heap.push(val)
      heapify_up
    end
  
    def pop
      root = @heap[0]
      last = @heap.pop
      if @heap.length > 0
        @heap[0] = last
        heapify_down
      end
      root
    end
  
    def peek
      @heap[0]
    end
  
    def size
      @heap.length
    end
  
    def heapify_up
      current_index = @heap.length - 1
      while current_index > 0 do
        parent_index = (current_index - 1) / 2.floor
        break if @heap[current_index] <= @heap[parent_index]
        @heap[current_index], @heap[parent_index] = @heap[parent_index], @heap[current_index]
        current_index = parent_index
      end
    end
  
    def heapify_down
      current_index = 0
      while current_index < @heap.length do
        left_child_index = current_index * 2 + 1
        right_child_index = current_index * 2 + 2
        largest_index = current_index
        largest_index = left_child_index if left_child_index < @heap.length && @heap[left_child_index] > @heap[largest_index]
        largest_index = right_child_index if right_child_index < @heap.length && @heap[right_child_index] > @heap[largest_index]
        break if largest_index == current_index
        @heap[current_index], @heap[largest_index] = @heap[largest_index], @heap[current_index]
        current_index = largest_index
      end
    end
  end
  
  class MinHeap
    def initialize
      @heap = []
    end
  
    def push(val)
      @heap.push(val)
      heapify_up
    end
  
    def pop
      root = @heap[0]
      last = @heap.pop
      if @heap.length > 0
        @heap[0] = last
        heapify_down
      end
      root
    end
  
    def peek
      @heap[0]
    end
  
    def size
      @heap.length
    end
  
    def heapify_up
      current_index = @heap.length - 1
      while current_index > 0 do
        parent_index = (current_index - 1) / 2.floor
        break if @heap[current_index] >= @heap[parent_index]
        @heap[current_index], @heap[parent_index] = @heap[parent_index], @heap[current_index]
        current_index = parent_index
      end
    end
  
    def heapify_down
      current_index = 0
      while current_index < @heap.length do
        left_child_index = current_index * 2 + 1
        right_child_index = current_index * 2 + 2
        smallest_index = current_index
        smallest_index = left_child_index if left_child_index < @heap.length && @heap[left_child_index] < @heap[smallest_index]
        smallest_index = right_child_index if right_child_index < @heap.length && @heap[right_child_index] < @heap[smallest_index]
        break if smallest_index == current_index
        @heap[current_index], @heap[smallest_index] = @heap[smallest_index], @heap[current_index]
        current_index = smallest_index 
      end 
    end 
  end 
  
  # Create a new MedianFinder object 
  median_finder = MedianFinder.new 
  
  # Declare an empty array called 'result' 
  result = [] 
  
  # Add the number 1 to the MedianFinder object and push the result to the 'result' array 
  result.push(median_finder.add_num(1)) 
  
  # Add the number 2 to the MedianFinder object and push the result to the 'result' array 
  result.push(median_finder.add_num(2)) 
  
  # Find the median of the numbers in the MedianFinder object and push it to the 'result' array with 5 decimal places 
  result.push(median_finder.find_median.round(5)) 
  
  # Add the number 3 to the MedianFinder object and push the result to the 'result' array 
  result.push(median_finder.add_num(3)) 
  
  # Find the median of the numbers in the MedianFinder object and push it to the 'result' array with 5 decimal places 
  result.push(median_finder.find_median.round(5)) 
  
  # Log the 'result' array to the console 
  puts result.to_s 
  