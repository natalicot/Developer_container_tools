# Minikube
![minikube](../images/minikube.png)

[minikube GitHub Pages](https://github.com/kubernetes/minikube)

[official website](https://minikube.sigs.k8s.io/)

### About
- minikube quickly sets up a local Kubernetes cluster on macOS, Linux, and Windows.
- Supports the latest Kubernetes release (+6 previous minor versions).
- Cross-platform (Linux, macOS, Windows).
- Deploy as a VM, a container, or on bare-metal.
- Multiple container runtimes (CRI-O, containerd, docker)


### Get started
```sh
# make sure minikube is installed
minikube version
```

```sh
# create a minikube cluster
minikube start
```


```sh
# After minikube finished checkout your cluster
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

