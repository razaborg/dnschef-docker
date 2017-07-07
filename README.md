# Docker version of DNSChef

This is a very simple docker version of the [DNSChef script](https://github.com/iphelix/dnschef).

It runs in a tiny alpine container, with only the few needed packages.

# Informations

The container automatically runs dnschef.py as entrypoint, loading the dnschef.ini file located in the /config folder of the container.
This set-up allow you to easily manage the dnschef script by editing the /config/dnschef.ini script through a docker volume.

## Example 


To run DNSChef and bind the 53/udp port to the host (on the host's local interface):

```
docker build . -t dnschef
docker run -d --name dnschef -v /host/config/folder:/config -p 127.0.0.1:53:53/udp dnschef
```



