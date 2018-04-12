var mnemonic = $MNEMONIC;
var accessToken = $INFURA_ACCESS_TOKEN;

module.exports = {
    networks: {
        development: {
            host: "localhost",
            port: 8545,
            network_id: "10"
        },
        ropsten: {
            provider: function () {
                return new HDWalletProvider(
                    mnemonic,
                    "https://ropsten.infura.io/" + accessToken
                );
            },
            network_id: 3,
            gas: 500000
        }
    }
};