#!/bin/bash
host=$1
port=$2
shift 2
command="$@"

echo "Waitin' for $host:$port to be ready..."
while ! nc -z $host $port; do
    sleep 1
done

echo "$host:$port is up. Startin' the command."
exec $command
