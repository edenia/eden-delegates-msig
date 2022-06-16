#/bin/sh

# Get user input
# echo "You may need to set the delegates accounts first - check the contents of delegates.json file"
# echo ""
# read -p "Enter the name and permission of the proposing account (e.g. account@active):" PROPOSER
# read -p "Enter the name of the proposal: " PROPOSAL
# echo ""
PROPOSER="costaricamae@active"
PROPOSAL="testdelegate"
API="https://eos.greymass.com"

# Confirm transaction details:
read -p "You ($PROPOSER) are creating a proposal called $PROPOSAL to udpate genesis.eden active permisions - if correct press enter. "

# Propose MSIG
cleos -u $API multisig propose $PROPOSAL current-eden-delegates.json -x "3600" -s -d -j \
'[
    {"actor": "geneis.eden", "permission": "active"}
]' \
eosio updateauth new-delegates.json -p $PROPOSER