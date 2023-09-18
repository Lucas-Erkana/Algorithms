const assert = require('assert');
const countSubstrings = require('./solution');

describe('countSubstrings', function () {
  it('should return 3 when given "abc"', function () {
    assert.equal(countSubstrings('abc'), 3);
  });
  it('should return 6 when given "aaa"', function () {
    assert.equal(countSubstrings('aaa'), 6);
  });
  it('should return 1 when given "a"', function () {
    assert.equal(countSubstrings('a'), 1);
  });
  it('should return 0 when given ""', function () {
    assert.equal(countSubstrings(''), 0);
  });
  it('should return 9 when given "ababa"', function () {
    assert.equal(countSubstrings('ababa'), 9);
  });
});
