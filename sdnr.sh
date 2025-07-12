#!/bin/bash
cd client/
# cleanup any previous (unsuccessful) runs.
docker-compose down
# Bringup sdnr
docker-compose up -d

# wait until sdnr up & running
for i in {1..60}; do
   res=$(curl -o /dev/null -sw %{http_code} http://localhost:8181/odlux/index.html)
   echo "$res"
   expect="200"
   if [ "$res" == "$expect" ]; then
      echo -e "SDNR is up and running\n"
      break;
   else
      sleep $i
   fi
done


# Adding delay to avoid curl failures
sleep 30

HOST_IP=$(hostname -I | awk '{print $1}')
USER_PWD=admin:admin

sleep 6000000

# Bring down the sdnr
#docker-compose down

# bring down the simulators
#cd tests/
#docker-compose down
#echo -e "\nTests completed"
#exit 0
