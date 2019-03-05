[snell](https://github.com/surge-networks/snell) docker

```shell
docker run  -p <PORT>:<PORT> --name snell -e PORT=<PORT> -e PSK=<PSK> -eOBFS={http,tls} agassiyzh/snell-server

```