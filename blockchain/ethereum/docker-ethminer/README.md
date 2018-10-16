# Ethereum CUDA Miner

**Note:** This image builds ethminer, which is an activily maintained Genoil fork <https://github.com/ethereum-mining/ethminer>

### Requirements
- Nvidia drivers (http://www.nvidia.com/Download/index.aspx)
- Nvidia-docker2 (so docker can access your GPU) install instructions here: [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)


### 2 Versions:
- 0.12.0
- 0.16.1 

### How to Build

Go to the selected  version

```
$ sudo docker build . -t docker-ethminer:0.12.0 
$ sudo docker build . -t docker-ethminer:0.16.1
```

### How to run

#### 0.12.0
##### Solo Mining:
```
$ sudo docker run --rm --runtime=nvidia -d --name ethereum-ethminer1 --network=ethereum_network docker-ethminer:0.12.0 -U -F http://ethereum-node1:8545
```

##### Pool Mining
```
$ sudo docker run --rm --runtime=nvidia -d --name ethereum-ethminer1 --network=ethereum_network docker-ethminer:0.12.0 -U -F http://eth-eu.dwarfpool.com/0x0747e388a09eb4a8de7a11bb432114d68c852fc2
```

#### 0.16.1
##### Solo Mining:
```
$ sudo docker run --rm --runtime=nvidia -d --name ethereum-ethminer1 --network=ethereum_network docker-ethminer:0.16.1 -U -P http://ethereum-node1:8545
```

##### Pool Mining
```
$ sudo docker run --rm --runtime=nvidia -d --name ethereum-ethminer1 --network=ethereum_network docker-ethminer:0.16.1 -U -P http://eth-eu.dwarfpool.com/0x0747e388a09eb4a8de7a11bb432114d68c852fc2
```


### Questions?
If this helped and you'd like to leave a tip --> `0x0747e388a09eb4a8de7a11bb432114d68c852fc2`
