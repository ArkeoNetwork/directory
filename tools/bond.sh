#!/bin/bash

BASEDIR=$(dirname "$0")
source $BASEDIR/env.sh

CHAIN=btc-mainnet-fullnode

USER=alice
PROVIDER_PUBKEY=$alicekey
AMT=112200000

arkeod tx arkeo bond-provider --from $USER -y $PROVIDER_PUBKEY $CHAIN $AMT
