#res=$(curl -o /dev/null -sw %{http_code} -u $USER_PWD -X PUT "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=ru_sim/yang-ext:mount/o-ran-delay-management:delay-management/adaptive-delay-configuration/transport-delay" -H "accept: */*" -H "Content-Type: application/json" -d '{"transport-delay":{"t12-min":1000,"t12-max":66666,"t34-min":2000,"t34-max":55555}}')

curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X GET "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware/component/state/power-state"-H "accept: */*" -H "Content-Type: application/json" -d '{"power-state": SLEEPING}'


curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X PUT "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-energy-saving-mgt:component-energy-monitoring/energy-saving" -H "accept: */*" -H "Content-Type: application/json" -d '{"energy-saving":{"power-state":off-state}}' -v

working commands:
GET:
curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X GET "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware" -H "accept: application/xml" -v

output:

root@spclab-ESPRIMO-P558:/home/spclab# curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X GET "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware" -H "accept: application/xml" -v
*   Trying 127.0.0.1:8181...
* Connected to localhost (127.0.0.1) port 8181 (#0)
* Server auth using Basic with user 'admin'
> GET /rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware HTTP/1.1
> Host: localhost:8181
> Authorization: Basic YWRtaW46S3A4Yko0U1hzek0wV1hsaGFrM2VIbGNzZTJnQXc4NHZhb0dHbUp2VXkyVQ==
> User-Agent: curl/7.87.0-DEV
> accept: application/xml
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Set-Cookie: JSESSIONID=node01b70hulyhpzhb1bo7xf3fzaa0113.node0; Path=/; HttpOnly
< Expires: Thu, 01 Jan 1970 00:00:00 GMT
< Set-Cookie: rememberMe=deleteMe; Path=/; Max-Age=0; Expires=Mon, 19-Aug-2024 06:20:03 GMT; SameSite=lax
< ETag: "2018-03-13-hardware"
< Last-Modified: 2024-Aug-20 06:20:03
< Content-Type: application/xml
< Content-Length: 602
< 
* Connection #0 to host localhost left intact
<hardware xmlns="urn:ietf:params:xml:ns:yang:ietf-hardware"><component><name>gNB-OAI</name><alias>Slot0-A-rrh</alias><o-ran-name xmlns="urn:o-ran:hardware:1.0">gNB-OAI</o-ran-name><class xmlns:x="urn:o-ran:hardware:1.0">x:O-RAN-RADIO</class><state><availability-state xmlns="urn:o-ran:hardware:1.0">FAULTY</availability-state><power-state xmlns="urn:o-ran:hardware:1.0">AWAKE</power-state><admin-state>unlocked</admin-state></state><energy-saving-enabled xmlns="urn:o-ran:hardware:1.0">true</energy-saving-enabled><parent-rel-pos>1</parent-rel-pos><parent>slot0-logical0</parent></component></hardware>200root


PUT command:

curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X PUT "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware/component=gNB-OAI/state" -H "accept: */*" -H "Content-Type: application/json" -d '{"state":{"power-state":SLEEPING}}'

output:

spclab-ESPRIMO-P558:/home/spclab/Downloads# curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X PUT "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware/component=gNB-OAI/state" -H "accept: */*" -H "Content-Type: application/json" -d '{"state":{"power-state":SLEEPING}}' -v
*   Trying 127.0.0.1:8181...
* Connected to localhost (127.0.0.1) port 8181 (#0)
* Server auth using Basic with user 'admin'
> PUT /rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware/component=gNB-OAI/state HTTP/1.1
> Host: localhost:8181
> Authorization: Basic YWRtaW46S3A4Yko0U1hzek0wV1hsaGFrM2VIbGNzZTJnQXc4NHZhb0dHbUp2VXkyVQ==
> User-Agent: curl/7.87.0-DEV
> accept: */*
> Content-Type: application/json
> Content-Length: 34
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 204 No Content
< Set-Cookie: JSESSIONID=node011dhmxi9wubauhsz0q5hzmnos104.node0; Path=/; HttpOnly
< Expires: Thu, 01 Jan 1970 00:00:00 GMT
< Set-Cookie: rememberMe=deleteMe; Path=/; Max-Age=0; Expires=Mon, 19-Aug-2024 11:51:29 GMT; SameSite=lax
< 
* Connection #0 to host localhost left intact

GET command:

spclab-ESPRIMO-P558:/home/spclab/Downloads# curl -sw '%{http_code}' -u admin:Kp8bJ4SXszM0WXlhak3eHlcse2gAw84vaoGGmJvUy2U -X GET "http://localhost:8181/rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware/component=gNB-OAI/yang-ext:mount/o-ran-hardware/state/power-state" -H "accept: application/xml" -v
*   Trying 127.0.0.1:8181...
* Connected to localhost (127.0.0.1) port 8181 (#0)
* Server auth using Basic with user 'admin'
> GET /rests/data/network-topology:network-topology/topology=topology-netconf/node=o1-adapter/yang-ext:mount/ietf-hardware:hardware/component=gNB-OAI/yang-ext:mount/o-ran-hardware/state/power-state HTTP/1.1
> Host: localhost:8181
> Authorization: Basic YWRtaW46S3A4Yko0U1hzek0wV1hsaGFrM2VIbGNzZTJnQXc4NHZhb0dHbUp2VXkyVQ==
> User-Agent: curl/7.87.0-DEV
> accept: application/xml
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Set-Cookie: JSESSIONID=node0s7e8xjobkeka19jg7zz3u7b5w106.node0; Path=/; HttpOnly
< Expires: Thu, 01 Jan 1970 00:00:00 GMT
< Set-Cookie: rememberMe=deleteMe; Path=/; Max-Age=0; Expires=Mon, 19-Aug-2024 12:37:31 GMT; SameSite=lax
< ETag: "2018-03-13-component"
< Last-Modified: 2024-Aug-20 12:37:31
< Content-Type: application/xml
< Content-Length: 581
< 
* Connection #0 to host localhost left intact
<component xmlns="urn:ietf:params:xml:ns:yang:ietf-hardware"><name>gNB-OAI</name><alias>Slot0-A-rrh</alias><o-ran-name xmlns="urn:o-ran:hardware:1.0">gNB-OAI</o-ran-name><class xmlns:x="urn:o-ran:hardware:1.0">x:O-RAN-RADIO</class><state><availability-state xmlns="urn:o-ran:hardware:1.0">NORMAL</availability-state><power-state xmlns="urn:o-ran:hardware:1.0">AWAKE</power-state><admin-state>unlocked</admin-state></state><energy-saving-enabled xmlns="urn:o-ran:hardware:1.0">true</energy-saving-enabled><parent-rel-pos>1</parent-rel-pos><parent>slot0-logical0</parent></component>200root@spclab-ESPRIMO-P558:/home/spclab/Downloads# 

