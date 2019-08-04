#!/bin/bash

echo "Get all operator sources available:"
kubectl -n marketplace get operatorsource

echo "Get operator source:"
kubectl -n marketplace get operatorsource sunsingerus-operators

echo "Get all catalog sources available:"
kubectl -n marketplace get catalogsource

echo "Get catalog source:"
kubectl -n marketplace get catalogsource sunsingerus-operators
