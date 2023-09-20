require_relative '../solution'
require 'rspec'

RSpec.describe 'exist' do
  context 'when the word exists in the grid' do
    it 'returns true' do
      board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
      word = "ABCCED"
      expect(exist(board, word)).to be true

      board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
      word = "SEE"
      expect(exist(board, word)).to be true
    end
  end

  context 'when the word does not exist in the grid' do
    it 'returns false' do
      board = [["C","O","D"],["I","N","G"],["A","T","E"]]
      word = "CODING"
      expect(exist(board, word)).to be false

      board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
      word = "ABCB"
      expect(exist(board, word)).to be false

      board = [["H","A","P"],["P","Y","B"],["C","O","D"]]
      word = "HAPPY"
      expect(exist(board, word)).to be false

      board = [["C","O","D"],["K","N","G"],["A","T","E"]]
      word = "CODING"
      expect(exist(board, word)).to be false
    end
  end

  context 'when handling edge cases' do
    it 'returns the expected result' do
      board = [["A"]]
      word = "A"
      expect(exist(board, word)).to be true

      board = [["A"]]
      word = "B"
      expect(exist(board, word)).to be false
    end
  end
end
