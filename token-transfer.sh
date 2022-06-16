#/bin/sh

# Set EOS Mainnet API to your favorite node.
API="https://eos.greymass.com"

cleos -u $API transfer eosio.grants genesis.eden "10.0000 EOS" "Hodl!" -p eosio@active