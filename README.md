# consulx


### Download Consul Cli

Url: https://www.consul.io/downloads.html

##### Direct Link:
https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_linux_amd64.zip

### Download Consul UI

https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_web_ui.zip"

### Http API 

https://www.consul.io/docs/agent/http.html

### Consul UI

http://localhost:8500/ui

### CLI Commands

consul agent -server -bootstrap -data-dir /tmp/consul --bind 192.168.0.1 - -node server1 &

consul agent -server -data-dir /tmp/consul --node server2 --bind 192.168.0. 2 &

consul agent -server -data-dir /tmp/consul --node server3 --bind 192.168.0. 3 &

consul agent -server -data-dir /tmp/consul &

consul join 192.168.0.2 192.168.0.3


consul agent -ui -data-dir /tmp/consul -client 192.168.0.20 -ui-dir
/vagrant/consul-ui/ -join 192.168.0.1 --bind 192.168.0.20 --node agent -config-dir ~/services/
&

consul members

consul reload -rpc-addr=192.168.0.20:8400







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
