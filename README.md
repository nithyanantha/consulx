# consulx


## Download
----

Url: https://www.consul.io/downloads.html

##### Direct Link:
https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_linux_amd64.zip

### Download Consul UI

ttps://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_web_ui.zip"

### Http API 

https://www.consul.io/docs/agent/http.html

-----

## Create Consul Clusters

        1. Add 1st Servers as a Leader
        consul agent -server -bootstrap -data-dir /tmp/consul --bind 192.168.0.1 - -node server1 &

        2. Add 2nd Server as slave
        consul agent -server -data-dir /tmp/consul --node server2 --bind 192.168.0. 2 &

        3.  Add 3rd Server as slave
        consul agent -server -data-dir /tmp/consul --node server3 --bind 192.168.0. 3 &

        4. Joing Servers nodes in the cluster as slaves

        consul join 192.168.0.2 192.168.0.3

----
## Create Consul Client
        consul agent -ui -data-dir /tmp/consul -client 192.168.0.20 -ui-dir
        /vagrant/consul-ui/ -join 192.168.0.1 --bind 192.168.0.20 --node agent -config-dir ~/services/
        &

-----
## Sample Consul Cli Commands

        consul members -rpc-addr=192.168.0.20:8400

        dig @192.168.0.20 -p 8600 orderserver.service.dc1.consul. Any

-----
### Sample Queries

        curl http://localhost:8500/v1/catalog/datacenters

        curl http://localhost:8500/v1/catalog/services

        curl http://localhost:8500/v1/catalog/service/orderserver

        curl http://192.168.0.20:8500/v1/agent/services

        curl http://localhost:8500/v1/catalog/nodes

        curl http://localhost:8500/v1/catalog/node/agent

        http://localhost:8500/v1/catalog/register

Method: PUT

                                      {
                          "Datacenter": "dc1",
                          "Node": "foobar",
                          "Address": "192.168.10.10",
                          "TaggedAddresses": {
                            "lan": "192.168.10.10",
                            "wan": "10.0.10.10"
                          },
                          "Service": {
                            "ID": "redis1",
                            "Service": "redis",
                            "Tags": [
                              "master",
                              "v1"
                            ],
                            "Address": "127.0.0.1",
                            "Port": 8000
                          },
                          "Check": {
                            "Node": "foobar",
                            "CheckID": "service:redis1",
                            "Name": "Redis health check",
                            "Notes": "Script based health check",
                            "Status": "passing",
                            "ServiceID": "redis1"
                          }
                        }
 


http://localhost:8500/v1/catalog/deregister
Method: PUT

        {
           "Datacenter": "dc1",
           "Node": "foobar",
        }
