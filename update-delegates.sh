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

# Make temp dir for storing files
  mkdir -p ./tmp
  TEMP_DIR=./tmp

# Propose MSIG
echo 'creating updateauth action...'
cleos -u $API multisig propose $PROPOSAL current-eden-delegates.json -x "3600" -s -d -j \
'[
    {"actor": "genesis.eden", "permission": "active"}
]' \
eosio updateauth new-delegates.json -s -d -j -p $PROPOSER > $TEMP_DIR/permissions.json

# Get required data from permission action
echo 'meging actions...'
jq -s '[.[].actions[]]' $TEMP_DIR/permissions.json >$TEMP_DIR/proposal-actions.json

echo 'creating transaction...'
jq '.actions = input' $TEMP_DIR/permissions.json $TEMP_DIR/proposal-actions.json >$TEMP_DIR/proposal-trasaction.json

echo 'signing transaction...'
cleos -u $API push transaction $TEMP_DIR/proposal-trasaction.json -p $PROPOSER