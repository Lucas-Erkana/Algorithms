function removeDuplicates(nums) {
  //Write code here
};


let nums = [1,3,3,3,2,5,5,5]
console.log(removeDuplicates(nums)) // Expected output: 4

nums = [1,1,2]
console.log(removeDuplicates(nums)) // Expected output: 1

nums = [1,1,1,2,2,2,4,4,4,6,6,6,6,6,7,7,8,8]
console.log(removeDuplicates(nums)) // ExpectremoveDuplicatesed output: 12

nums = [1,2,3,4]
console.log(removeDuplicates(nums)) // Expected output: 0



module.exports = removeDuplicates;