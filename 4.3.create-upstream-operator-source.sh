

https://github.com/operator-framework/operator-marketplace/blob/master/deploy/upstream/07_upstream_operatorsource.cr.yaml

kubectl apply -f  operator-marketplace/deploy/upstream/07_upstream_operatorsource.cr.yaml 

# Get available operators
kubectl -n marketplace get opsrc upstream-community-operators -o=custom-columns=NAME:.metadata.name,PACKAGES:.status.packages


