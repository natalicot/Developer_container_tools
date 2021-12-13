# Kind
![kind](../images/kind.png)

[kind GitHub Pages](https://github.com/kubernetes-sigs/kind)

[official website](https://kind.sigs.k8s.io/)

### About

- kind is a tool for running local Kubernetes clusters using Docker or Podman container “nodes”. Cross-platform (Linux, macOS, Windows)
- faster startup speed compared to minikube.
- Multiple cluster.
- Multiple nodes.
- ability to load local images directly into the cluster.  -> kind load docker-image my-app:latest

### Get started
```sh
# make sure kind is installed
kind --version
```

```sh
# create a kind cluster
kind create cluster --name my-demo-cluster
```

```sh
# After kind finished checkout your cluster
kubectl get all -A
```

```sh
# create a new namespace
kubectl create namespace app
```

```sh
# show all namespaces
kubectl get namespaces
```

## Find more:
For more examples on working with a k8s cluster checkout sela's k8s workshop repository. where you can find a lot of cool labs:
[sela k8s labs](https://gitlab.com/sela-kubernetes-workshop)

## Useful tool:
switching between clusters and namespaces:
[kubectx + kubens](https://github.com/ahmetb/kubectx)

