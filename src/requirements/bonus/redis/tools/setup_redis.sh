#!/bin/sh

# if [ ! -f /etc/redis.conf.old ]; then
# 	cp /etc/redis.conf redis.conf.old
# 	sed 's|maxmemory 2mb' /etc/redis.conf
# 	sed 's|maxmemory-policy allkeys-lru' /etc/redis.conf
# fi

echo "Redis startes successfully"

redis-server --protected-mode no
