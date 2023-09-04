// Given two binary strings a and b, return their sum as a binary string.

 

// Example 1:

// Input: a = "11", b = "1"
// Output: "100"
// Example 2:

// Input: a = "1010", b = "1011"
// Output: "10101"


// input a = "111" (7) b='11' (3)   
//  output  7+3= 10

//16 8 4 2 1 
//     1 1 1 = 4+2+1 = 7
//       1 1 = 2+1 = 3
//   
// 10 % 2= 0
// 10 / 2= 5 % 2 = 1
// 5 / 2= 2 % 2 = 0
// 2 / 2 = 1 % 2 = 1

// 1010

// Split the string input a and b into two different arrays called ArrayA and ArrayB
// Create a function to takes array argument and convert binary to decimal return integer
// Create a function to takes decimal argument and convert decimal to binary , return binary string
// We need to add the two function ConvertToBinary(arrayA) + ConvertToBinary(arrayB) in sum
//pass the value in the DecimaltoBinary(sum)
//return final result