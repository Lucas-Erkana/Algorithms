def exist(board, word)
 # Write code here
end


board = [["C","O","D"],["I","N","G"],["A","T","E"]]
word = "CODING"
puts exist(board, word) # false

board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word = "ABCCED"
puts exist(board, word) # true

board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word = "SEE"
puts exist(board, word) # true

board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word = "ABCB"
puts exist(board, word) # false

board = [["H","A","P"],["P","Y","B"],["C","O","D"]]
word = "HAPPY"
puts exist(board, word) # false

board = [["C","O","D"],["K","N","G"],["A","T","E"]]
word = "CODING"
puts exist(board, word) # false
