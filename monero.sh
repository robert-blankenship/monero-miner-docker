#!/usr/bin/env bash
threads="${1}"
address="${2}"
cpuminer-multi/minerd --threads="${threads}" -a cryptonight -o stratum+tcp://mine.moneropool.com:3333 -u "${address}" -p x &> monero.log

