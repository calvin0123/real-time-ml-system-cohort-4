# Session 3


## 1. Goals

- [x] Build the `candles` services
- [x] Deploy the `candles` services to the `dev` cluster
- [ ] Deploy the `trades` services to the `prod` cluster
- [ ] Deploy the `candles` services to the `prod` cluster
    - [x] build and push the image to the github container registry
    - [x] deployment/prod/candles/candles.yaml
    - [ ] set KUBECONFIG to point to the `prod` cluster
    - [ ] trigger the deployment manually with `kubectl apply -f deployments/prod/candles.yaml`

- [ ] Build boillerate for the `technical indicator` service
    - [ ] Install talib C library 

Just know how to interact with Kubernetes
Can either be build by yourself of aws EKS

## Further matrials
- Kafka topics, Kafka partitions, Kafka replication factor, Message keys

Interact with different cluster - dev, prod using kubectl. We want to make sure we interact with the right cluster

kafka - borker - 1 replica - 2 partition
consumer group
Kafka message/keys -> Kafka partition

if we can have this `KUBECONFIG`, which is the kubernetes cluster that other people can provide. 
We don't need to create from scratch. There is cloud provide already spin up the kubernetes for us.
The only thing we need is the config file (aka kubernetes cluster) that cloud provider built for us.

## Challenges

- Instead of having one Dockerfile for each service, write a single Dockerfile that builds both services.
- How to copy a file from one branch (from example `dev`) to another branch (for example `main`)
 ```sh
 git checkout dev -- deployments/prod/trades/trades.yaml
 ```