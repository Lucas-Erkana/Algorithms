var MedianFinder = function() {
    this.maxHeap = new MaxHeap();  // Max heap to store the smaller half of the numbers
    this.minHeap = new MinHeap();  // Min heap to store the larger half of the numbers
};

MedianFinder.prototype.addNum = function(num) {
    // Add the number to the appropriate heap
    if (this.maxHeap.size() === 0 || num <= this.maxHeap.peek()) {
        this.maxHeap.push(num);
    } else {
        this.minHeap.push(num);
    }

    // Rebalance the heaps if necessary
    if (this.maxHeap.size() - this.minHeap.size() > 1) {
        this.minHeap.push(this.maxHeap.pop());
    } else if (this.minHeap.size() - this.maxHeap.size() > 1) {
        this.maxHeap.push(this.minHeap.pop());
    }
};

MedianFinder.prototype.findMedian = function() {
    // Determine the sizes of the heaps
    const totalSize = this.maxHeap.size() + this.minHeap.size();
    const isEven = totalSize % 2 === 0;

    // Calculate the median based on the sizes of the heaps
    if (isEven) {
        return (this.maxHeap.peek() + this.minHeap.peek()) / 2;
    } else {
        return this.maxHeap.size() > this.minHeap.size() ? this.maxHeap.peek() : this.minHeap.peek();
    }
};

// Heap implementation for the max and min heaps
class MaxHeap {
    constructor() {
        this.heap = [];
    }

    push(val) {
        this.heap.push(val);
        this.heapifyUp();
    }

    pop() {
        const root = this.heap[0];
        const last = this.heap.pop();
        if (this.heap.length > 0) {
            this.heap[0] = last;
            this.heapifyDown();
        }
        return root;
    }

    peek() {
        return this.heap[0];
    }

    size() {
        return this.heap.length;
    }

    heapifyUp() {
        let currentIndex = this.heap.length - 1;
        while (currentIndex > 0) {
            const parentIndex = Math.floor((currentIndex - 1) / 2);
            if (this.heap[currentIndex] <= this.heap[parentIndex]) {
                break;
            }
            [this.heap[currentIndex], this.heap[parentIndex]] = [this.heap[parentIndex], this.heap[currentIndex]];
            currentIndex = parentIndex;
        }
    }

    heapifyDown() {
        let currentIndex = 0;
        while (currentIndex < this.heap.length) {
            const leftChildIndex = 2 * currentIndex + 1;
            const rightChildIndex = 2 * currentIndex + 2;
            let largestIndex = currentIndex;
            if (leftChildIndex < this.heap.length && this.heap[leftChildIndex] > this.heap[largestIndex]) {
                largestIndex = leftChildIndex;
            }
            if (rightChildIndex < this.heap.length && this.heap[rightChildIndex] > this.heap[largestIndex]) {
                largestIndex = rightChildIndex;
            }
            if (largestIndex === currentIndex) {
                break;
            }
            [this.heap[currentIndex], this.heap[largestIndex]] = [this.heap[largestIndex], this.heap[currentIndex]];
            currentIndex = largestIndex;
        }
    }
}

class MinHeap {
    constructor() {
        this.heap = [];
    }

    push(val) {
        this.heap.push(val);
        this.heapifyUp();
    }

    pop() {
        const root = this.heap[0];
        const last = this.heap.pop();
        if (this.heap.length > 0) {
            this.heap[0] = last;
            this.heapifyDown();
        }
        return root;
    }

    peek() {
        return this.heap[0];
    }

    size() {
        return this.heap.length;
    }

    heapifyUp() {
        let currentIndex = this.heap.length - 1;
        while (currentIndex > 0) {
            const parentIndex = Math.floor((currentIndex - 1) / 2);
            if (this.heap[currentIndex] >= this.heap[parentIndex]) {
                break;
            }
            [this.heap[currentIndex], this.heap[parentIndex]] = [this.heap[parentIndex], this.heap[currentIndex]];
            currentIndex = parentIndex;
        }
    }

    heapifyDown() {
        let currentIndex = 0;
        while (currentIndex < this.heap.length) {
            const leftChildIndex = 2 * currentIndex + 1;
            const rightChildIndex = 2 * currentIndex + 2;
            let smallestIndex = currentIndex;
            if (leftChildIndex < this.heap.length && this.heap[leftChildIndex] < this.heap[smallestIndex]) {
                smallestIndex = leftChildIndex;
            }
            if (rightChildIndex < this.heap.length && this.heap[rightChildIndex] < this.heap[smallestIndex]) {
                smallestIndex = rightChildIndex;
            }
            if (smallestIndex === currentIndex) {
                break;
            }
            [this.heap[currentIndex], this.heap[smallestIndex]] = [this.heap[smallestIndex], this.heap[currentIndex]];
            currentIndex = smallestIndex;
        }
    }
}


// Create a new MedianFinder object
let medianFinder = new MedianFinder();

// Declare an empty array called 'result'
let result = [];

// Add the number 1 to the MedianFinder object and push the result to the 'result' array
result.push(medianFinder.addNum(1));

// Add the number 2 to the MedianFinder object and push the result to the 'result' array
result.push(medianFinder.addNum(2));

// Find the median of the numbers in the MedianFinder object and push it to the 'result' array with 5 decimal places
result.push(medianFinder.findMedian().toFixed(5));

// Add the number 3 to the MedianFinder object and push the result to the 'result' array
result.push(medianFinder.addNum(3));

// Find the median of the numbers in the MedianFinder object and push it to the 'result' array with 5 decimal places
result.push(medianFinder.findMedian().toFixed(5));

// Log the 'result' array to the console
console.log(result);
