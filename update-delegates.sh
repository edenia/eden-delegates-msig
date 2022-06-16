#/bin/sh

# Set EOS Mainnet API to your favorite node.
API="https://eos.greymass.com"

# Get user input
echo "You may need to set the delegates accounts first - check the contents of current-eden-delegates.json and new-delegates.json files."
echo ""
read -p "Enter the name and permission of the proposing account (e.g. account@active):" PROPOSER
read -p "Enter the name of the proposal: " PROPOSAL
echo ""

# Confirm transaction details:
read -p "You ($PROPOSER) are creating a proposal called $PROPOSAL to udpate genesis.eden active permisions - if correct press enter. "

# Propose MSIG
cleos -u $API multisig propose $PROPOSAL current-eden-delegates.json -x "3600" \
'[
    {"actor": "geneis.eden", "permission": "active"}
]' \
eosio updateauth new-delegates.json -p $PROPOSER