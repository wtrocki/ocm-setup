CLUSTER=`ocm list clusters | grep pmuir
 | awk '{ print $1}'`
docker run -i --rm quay.io/mmclaugh/osd-cluster-extender extend -u https://api.stage.openshift.com -c ${CLUSTER} -r `jq -r < ~/.ocm.json '.refresh_token'`