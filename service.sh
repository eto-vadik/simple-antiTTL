MODDIR=${0%/*}

iptables -t mangle -A POSTROUTING -j TTL --ttl-set 64
iptables -t mangle -I PREROUTING -j TTL --ttl-inc 1
ip6tables -t mangle -A POSTROUTING -j HL --hl-set 64
ip6tables -t mangle -A PREROUTING -m hl --hl 1 -j HL --hl-inc 1