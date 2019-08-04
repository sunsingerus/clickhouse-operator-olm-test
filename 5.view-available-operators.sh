#!/bin/bash

kubectl get opsrc sunsingerus-operators -o=custom-columns=NAME:.metadata.name,PACKAGES:.status.packages -n marketplace

