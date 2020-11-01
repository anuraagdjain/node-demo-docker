const chai = require('chai');
const axios = require('axios');
const { expect } = require('chai');

const { HOST = 'localhost', PORT = '8080' } = process.env;

const testUrl = `http://${HOST}:${PORT}/`;

describe('node-demo integration test', function () {
  it('health check', async function () {
    const response = await axios.get(testUrl);
    expect(response.status).to.be.eq(200);
    expect(response.data).to.be.an('object');
    expect(response.data).to.have.key('time');
  });
});
