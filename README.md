# clickhouse-operator-olm-test
Test scripts for OLM integration.

Set of step-by-step scripts to walk over this [testing operator](https://github.com/operator-framework/community-operators/blob/master/docs/testing-operators.md) manual
for [clickhouse-operator](https://github.com/altinity/clickhouse-operator)

1. Install OLM
1. Install operator marketplace into `marketplace` namespace.\
   Operator marketplace manages `OperatorSource` which provides custom operator sources.
1. Create `OperatorSource` in `marketplace` namespace pointing to quay namespace.\
   The creation of an `OperatorSource` results in the creation of an OLM `CatalogSource` in the same namespace the marketplace operator is running in.\
   This `CatalogSource` will be populated with operators from the `OperatorSource` ready to be managed by OLM.
1. Create `OperatorGroup` in `default` namespace pointing to `marketplace` namespace
1. Create `Subscription` in `marketplace` namespace pointing to channel.package in `OperatorSource`

```text
+---------------------------------+
|Namespace: marketplace           |
|                                 |
|kind: OperatorSource             |
|name: sunsingerus-operators      |
|desc: Points to quay.io namespace|
|      where to look for packages |
|      sunsingerus in our case    |

|kind: Subscrption
|name: clickhouse-operator-subscription|
|desc: Points to 'channel.package'     |
|      in an 'OperatorSource'          |

+--------------------------------------+
|Namespace: default                    |
|
|kind: OperatorGroup
|name: clickhouse-operatorgroup
|desc: Points to target namespace(s)
|      'marketplace' in our case
```
