const assert = require('assert');
const exist = require('./solution');

describe('exist', function() {
  it('should return false if word is not found', function() {
    const board = [["C","O","D"],["I","N","G"],["A","T","E"]];
    const word = "CODING";
    const expected = false;
    const actual = exist(board, word);
    assert.strictEqual(actual, expected);
  });

  it('should return true if word is found horizontally', function() {
    const board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]];
    const word = "ABCCED";
    const expected = true;
    const actual = exist(board, word);
    assert.strictEqual(actual, expected);
  });

  it('should return true if word is found vertically', function() {
    const board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]];
    const word = "SEE";
    const expected = true;
    const actual = exist(board, word);
    assert.strictEqual(actual, expected);
  });

  it('should return false if word cannot be formed', function() {
    const board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]];
    const word = "ABCB";
    const expected = false;
    const actual = exist(board, word);
    assert.strictEqual(actual, expected);
  });

  it('should return false if word cannot be formed', function() {
    const board = [["H","A","P"],["P","Y","B"],["C","O","D"]];
    const word = "HAPPY";
    const expected = false;
    const actual = exist(board, word);
    assert.strictEqual(actual, expected);
  });
});
