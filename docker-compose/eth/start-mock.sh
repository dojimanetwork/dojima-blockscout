#!/bin/sh

ETH_BLOCK_TIME="${ETH_BLOCK_TIME:=5}"

geth --dev --dev.period 5 --datadir="/data" --http -http.api="eth,net,engine,web3,miner,personal,txpool,debug" --http.addr 0.0.0.0 --http.port 9545 --http.corsdomain "*" --http.vhosts="*" --rpc.txfeecap 0 --networkid 8 --mine --miner.threads 1 --allow-insecure-unlock --nodiscover
