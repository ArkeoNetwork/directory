#!/bin/bash

BASEDIR=$(dirname "$0")
source $BASEDIR/env.sh

# increment each invocation
CHAIN=eth-mainnet-fullnode

USER=bob
PROVIDER_PUBKEY=$alicekey
CLIENT_PUBKEY=$bobkey

# Error: accepts 7 arg(s), received 0
# Usage:
#   arkeod tx arkeo open-contract [provider_pubkey] [chain] [client_pubkey] [c-type] [deposit] [duration] [rate] [delegation-optional] [flags]
# 0=Subscription 1=PayAsYouGo

PAY_AS_YOU_GO=1
RATE=20
DEPOSIT=2
DURATION=10

arkeod tx arkeo open-contract --from $USER $PROVIDER_PUBKEY $CHAIN $CLIENT_PUBKEY $PAY_AS_YOU_GO $DEPOSIT $DURATION $RATE  -y
echo "done"
