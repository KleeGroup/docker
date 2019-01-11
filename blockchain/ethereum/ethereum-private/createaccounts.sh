#!/bin/bash
IMGNAME="ethereum/client-go:alltools-v1.7.3"

DATA_ROOT=${DATA_ROOT:-"$(pwd)/.ethereum"}

docker run --rm -ti \
	-v $DATA_ROOT:/root/.ethereum \
	$IMGNAME \
	geth account new


