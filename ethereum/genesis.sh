#!/bin/bash
GEN_NONCE="0xeddeadbadcafebad"
GEN_CHAIN_ID=777

GEN_ALLOC="\"0xada72b59c50bed9009689fdb9eb0228470e129bc\": \{\"balance\": \"1000\"\},\"0x9a48b59e301794298fdc0f945da3fbd58cff5beb\": \{\"balance\": \"2000\"\},\"0x2e61cf9f966d4e66a0912d3116008cf8e47cb32e\": \{\"balance\": \"100\"\},\"0x649cfcda2850cad3645d11b177b9b1f55e03ea48\": \{\"balance\": \"100\"\},\"0xe20ff479979afb605e1c5597a6c17b07038da94b\": \{\"balance\": \"100\"\},\"0x451ae15dba9de67a3a045633b8f69de59e18e5a0\": \{\"balance\": \"100\"\},\"0x839fcb30f017335e047042d3b504055e2340387b\": \{\"balance\": \"100\"\}"

#GEN_ALLOC='"0x0000000000000000000000000000000000000001": {"\"balance\"": "1000"}'

echo $GEN_ALLOC

sed "s/\${GEN_NONCE}/$GEN_NONCE/g" src/genesis.json.template | sed "s/\${GEN_ALLOC}/$GEN_ALLOC/g" | sed "s/\${GEN_CHAIN_ID}/$GEN_CHAIN_ID/g" > genesis.json
