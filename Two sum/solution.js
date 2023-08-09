/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    const numToIndex = new Map(); // Create a map to store each number and its index
    
    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i]; // Calculate the complementary number needed to reach the target
        
        if (numToIndex.has(complement)) {
            return [numToIndex.get(complement), i]; // If the complement is in the map, return its index along with the current index
        }
        
        numToIndex.set(nums[i], i); // Store the current number and its index in the map
    }
    
    throw new Error("No solution found"); // If no solution is found, throw an error
};

// Example usage
const nums1 = [2, 7, 11, 15];
const target1 = 9;
console.log(twoSum(nums1, target1)); // Output: [0, 1]

const nums2 = [3, 2, 4];
const target2 = 6;
console.log(twoSum(nums2, target2)); // Output: [1, 2]

const nums3 = [3, 3];
const target3 = 6;
console.log(twoSum(nums3, target3)); // Output: [0, 1]
