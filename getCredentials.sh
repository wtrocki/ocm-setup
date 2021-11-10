CLUSTER=`ocm list clusters | grep devexp | awk '{ print $1}'`

ocm get /api/clusters_mgmt/v1/clusters/${CLUSTER}/credentials | jq -r .admin
ocm get /api/clusters_mgmt/v1/clusters/${CLUSTER} | grep expiration_timestamp