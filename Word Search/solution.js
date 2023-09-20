var exist = function(board, word) {
            //Write code here
  };
  
 let board = [["C","O","D"],["I","N","G"],["A","T","E"]]
  let word = "CODING"
  console.log(exist(board, word),) // false
  
board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word = "ABCCED"
console.log(exist(board, word)) // true
  
board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word = "SEE"
console.log(exist(board, word)) // true

board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word= "ABCB"
console.log(exist(board, word)) // false

board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word = "ABCCED"
console.log(exist(board, word)) // true

board = [["H","A","P"],["P","Y","B"],["C","O","D"]]
word = "HAPPY"
console.log(exist(board, word)) // false


board = [["C","O","D"],["K","N","G"],["A","T","E"]]
word = "CODING"
console.log(exist(board, word)) // false

module.exports = exist;