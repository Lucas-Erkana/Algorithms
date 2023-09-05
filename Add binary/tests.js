const assert = require('assert');
const addBinary = require('./solution');

describe('addBinary', function () {
  it('should return "0" when given "0" and "0"', function () {
    assert.equal(addBinary('0', '0'), '0');
  });
  it('should return "10" when given "1" and "1"', function () {
    assert.equal(addBinary('1', '1'), '10');
  });
  it('should return "101" when given "100" and "1"', function () {
    assert.equal(addBinary('100', '1'), '101');
  });
  it('should return "10010" when given "1010" and "1000"', function () {
    assert.equal(addBinary('1010', '1000'), '10010');
  });
  
  it('should return "11111" when given "1111" and "1111"', function () {
    assert.equal(addBinary('1111', '1111'), '11110');
  });
  
  it('should return "100000" when given "11111" and "1"', function () {
    assert.equal(addBinary('11111', '1'), '100000');
  });
  
  it('should return "110111" when given "101110" and "1001"', function () {
    assert.equal(addBinary('101110', '1001'), '110111');
  });
  
});
