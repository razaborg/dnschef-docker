# Docker version of DNSChef

This is a very simple docker version of the [DNSChef script](https://github.com/iphelix/dnschef).

It runs in a tiny alpine container, with only the few needed packages.

# Informations

The container automatically runs dnschef.py as entrypoint, loading the dnschef.ini file located in the /config folder of the container.
This set-up allow you to easily manage the dnschef script by editing the /config/dnschef.ini script through a docker volume.

## Example 


```
docker build . -t dnschef
docker run --rm -it -v ./config:/config dnschef
```

### With docker-compose

```
docker-compose up -d
```


