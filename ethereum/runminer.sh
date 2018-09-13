#!/bin/bash
NODE_NAME=$1
ETHERBASE=$2
NODE_NAME=${NODE_NAME:-"miner1"}
ETHERBASE=${ETHERBASE:-"0x0000000000000000000000000000000000000001"}
./runnode.sh $NODE_NAME false --mine --minerthreads=1 --etherbase="$ETHERBASE"
