touch monero.log
docker run --volume $(pwd)/monero.log:/root/monero.log --detach cpuminer-multi-docker /root/monero.sh 7 MY_ADDRESS 
