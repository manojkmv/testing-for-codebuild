let assert = require('assert');
const serverTest = require("../src/server");

describe('', () => {
    it('should return (i*2)+1 for any given i', function(){
        assert.equal(3, serverTest.exported(1));
    });
})