./wipeall.sh
./genesis.sh
./bootnode.sh
sleep 5
./runnode.sh node1 true
sleep 15
./runnode.sh node2 false
sleep 15
./runminer.sh miner1 0x2e61cf9f966d4e66a0912d3116008cf8e47cb32e
sleep 60
./runminer.sh miner2 0x649cfcda2850cad3645d11b177b9b1f55e03ea48
sleep 60
./runminer.sh miner3 0xe20ff479979afb605e1c5597a6c17b07038da94b
sleep 60
./runminer.sh miner4 0x451ae15dba9de67a3a045633b8f69de59e18e5a0
sleep 60
./runminer.sh miner5 0x839fcb30f017335e047042d3b504055e2340387b
