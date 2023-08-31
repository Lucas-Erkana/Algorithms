var moveZeroes = function(nums) {
    let lastNonZeroIndex = 0;
    
    // Iterate through the array
    for (let i = 0; i < nums.length; i++) {
      // If the current element is not zero
      if (nums[i] !== 0) {
        // Move the current element to the front of the array
        nums[lastNonZeroIndex++] = nums[i];
      }
    }
    
    // Fill the rest of the array with zeros
    for (let i = lastNonZeroIndex; i < nums.length; i++) {
      nums[i] = 0;
    }
  };
  
  let nums =[0,1,0,3,12];
  console.log("Original Array: ", nums);
  moveZeroes(nums);
  console.log("Modified Array: ", nums);
  