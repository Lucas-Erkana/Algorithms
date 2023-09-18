const assert = require('assert');
const lengthOfLongestSubstring = require('./solution');

describe('lengthOfLongestSubstring', function() {
  it('should return 3 for "abcabcbb"', function() {
    assert.strictEqual(lengthOfLongestSubstring("abcabcbb"), 3);
  });

  it('should return 1 for "bbbbb"', function() {
    assert.strictEqual(lengthOfLongestSubstring("bbbbb"), 1);
  });

  it('should return 3 for "pwwkew"', function() {
    assert.strictEqual(lengthOfLongestSubstring("pwwkew"), 3);
  });

  it('should return 0 for ""', function() {
    assert.strictEqual(lengthOfLongestSubstring(""), 0);
  });

  it('should return 1 for "a"', function() {
    assert.strictEqual(lengthOfLongestSubstring("a"), 1);
  });
});
