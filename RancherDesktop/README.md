# Ranche Desktop
![Ranche Desktop](../images/rancher.png)

[Ranche Desktop GitHub Pages](https://github.com/rancher-sandbox/rancher-desktop)

[official website](https://rancherdesktop.io/)

### About

- Rancher Desktop is an open-source desktop application for Mac, Windows and Linux. 

- The version of Kubernetes you choose

- Run containers, and build, push, and pull images (powered by nerdctl & kim).

- Rancher cannot run multiple clusters at ones. And doesn’t support a multiple node cluster.





### Get started
```sh
# instll the latest release
echo https://github.com/rancher-sandbox/rancher-desktop/releases
```

```sh
# After installing rancher get all the running pods in the rancher desktop cluster
kubectl get all -A
```

```sh
# create a new namespace
kubectl create namespace app
```

```sh
# show all name spaces
kubectl get namespaces
```

## Find more:
For more examples on working with a k8s cluster checkout sela's k8s workshop repository. where you can find a lot of cool labs:
[sela k8s labs](https://gitlab.com/sela-kubernetes-workshop)

## Useful tool:
switching between clusters and namespaces:
[kubectx + kubens](https://github.com/ahmetb/kubectx)
