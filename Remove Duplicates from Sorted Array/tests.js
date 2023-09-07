const assert = require('assert');
const removeDuplicates = require('./solution');

describe('removeDuplicates', function () {
  it('should return 4 for [1,3,3,3,2,5,5,5]', function () {
    assert.equal(removeDuplicates([1,3,3,3,2,5,5,5]), 4);
  });

  it('should return 1 for [1,1,2]', function () {
    assert.equal(removeDuplicates([1,1,2]), 1);
  });

  it('should return 12 for [1,1,1,2,2,2,4,4,4,6,6,6,6,6,7,7,8,8]', function () {
    assert.equal(removeDuplicates([1,1,1,2,2,2,4,4,4,6,6,6,6,6,7,7,8,8]), 12);
  });

  it('should return 0 for [1,2,3,4]', function () {
    assert.equal(removeDuplicates([1,2,3,4]), 0);
  });

  it('should return 1 for [1,1,2,3,4]', function () {
    assert.equal(removeDuplicates([1,1,2,3,4]), 1);
  });

  it('should return 3 for [1,1,2,2,3,9,9]', function () {
    assert.equal(removeDuplicates([1,1,2,2,3,9,9]), 3);
  });
});

