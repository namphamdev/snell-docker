#!/bin/bash


if [ $PORT ]; then
    sed -i "s/<PORT>/$PORT/" /app/snell-server.conf
elif
    echo "\$PORT is not specified"
    exit 1
fi

if [ $PSK ]; then
    sed -i "s/<PSK>/$PSK/" /app/snell-server.conf
elif
    echo "\$PSK is not specified"
    exit 1
fi



/app/snell-server