function addBinary(a, b) {
  let x = parseInt(a, 2); // Convert binary string to integer
  let y = parseInt(b, 2); // Convert binary string to integer
  let carry = 0;
  while (y !== 0) {
    carry = x & y; // Compute carry-over bits
    x = x ^ y; // Compute sum of bits without carry-over
    y = carry << 1; // Shift carry-over bits to the left
  }
  return x.toString(2); // Convert integer to binary string
}

console.log(addBinary('11', '1')); // Output must be "100"
console.log(addBinary('1010', '1011')); // Output must be "10101"
console.log(addBinary('1012', '1011')); // Output must be "Error: Inputs must be binary strings (containing only 0s and 1s)"

module.exports = addBinary; // Export the addBinary function for use in other modules
