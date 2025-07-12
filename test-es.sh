#res=$(curl -o /dev/null -sw %{http_code} -u $USER_PWD -X PUT "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=ru_sim/yang-ext:mount/o-ran-delay-management:delay-management/adaptive-delay-configuration/transport-delay" -H "accept: */*" -H "Content-Type: application/json" -d '{"transport-delay":{"t12-min":1000,"t12-max":66666,"t34-min":2000,"t34-max":55555}}')


curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X GET "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-energy-saving-mgt:component-energy-monitoring" -H "Content-Type: application/xml" -v 

curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X GET "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware/component/state/power-state: application/xml" -v 
