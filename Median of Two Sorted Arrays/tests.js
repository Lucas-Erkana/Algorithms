const assert = require('assert');
const findMedianSortedArrays = require('./solution');

describe('findMedianSortedArrays', function () {
  it('should return 0 for [0,0] and [0,0]', function () {
    assert.equal(findMedianSortedArrays([0,0], [0,0]), 0);
  });
  it('should return 2.5 for [1,2] and [3,4]', function () {
    assert.equal(findMedianSortedArrays([1,2], [3,4]), 2.5);
  });
  it('should return 2 for [1,3] and [2]', function () {
    assert.equal(findMedianSortedArrays([1,3], [2]), 2);
  });
  it('should return 4 for [1,3,4,7] and [2,7,4,5]', function () {
    assert.equal(findMedianSortedArrays([1,3,4,7], [2,7,4,5]), 4);
  });
});
