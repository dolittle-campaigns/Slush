#!/bin/bash
sh ./dockerize.sh
docker push dolittle/campaigns:slush
kubectl patch deployment slush --namespace dolittle-campaigns -p "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"