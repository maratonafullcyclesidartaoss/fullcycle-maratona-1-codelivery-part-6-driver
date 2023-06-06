#!/bin/bash
kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/realms/driver/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=maria' \
--data-urlencode 'password=maria' \
--data-urlencode 'client_secret=RorxPbglqzhLq5mTF0tN15wZV9kNXUCB' \
--data-urlencode 'scope=openid'