module.exports = function(nums) {
  // Write code here
  };
  
  

let nums = [1,3,3,3,2,5,5,5]

console.log(module.exports(nums)) //expected output must be 4

nums = [1,1,2]
console.log(module.exports(nums)) //expected output must be 1

nums = [1,1,1,2,2,2,4,4,4,6,6,6,6,6,7,7,8,8]
console.log(module.exports(nums)) //expected output must be 12

nums = [1,2,3,4]
console.log(module.exports(nums)) //expected output must be 0

nums = [1,1,2,3,4]
console.log(module.exports(nums)) //expected output must be 1

nums = [1,1,2,2,3,9,9]
console.log(module.exports(nums)) //expected output must be 3