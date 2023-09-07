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
  
  it('should return "100011" when given "11010" and "1001"', function () {
    assert.equal(addBinary('11010', '1001'), '100011');
  });

  it('should return "110111101100010011000101110110100000011101000101011001000011011000001100011110011010010011000000000" when given "10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101" and "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011"', function () {
    assert.equal(addBinary('10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101', '110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011'), '110111101100010011000101110110100000011101000101011001000011011000001100011110011010010011000000000');
  });


});

