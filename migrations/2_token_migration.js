const BlinkToken = artifacts.require('BlinkToken');

module.exports = function (deployer) {
    deployer.deploy(BlinkToken);
};