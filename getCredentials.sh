CLUSTER=`ocm list clusters | grep wtrocki | awk '{ print $1}'`

ocm get /api/clusters_mgmt/v1/clusters/${CLUSTER}/credentials | jq -r .admin