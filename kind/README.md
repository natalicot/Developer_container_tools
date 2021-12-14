
# Kind

![kind](../images/kind.png)

[kind GitHub Pages](https://github.com/kubernetes-sigs/kind)

[official website](https://kind.sigs.k8s.io/)


- כלי קוד פתוח המאפשר הרצה של קלאסר לוקלי
- תומך בגירסאות שונות של kubernetes
- משתמש בקונטיינר של docker או של podman כ kubernetes nodes בזמן הריצה
- מאפשר שימוש בכמה nodes בקלאסר אחד
- מאפשר הרצה של כמה קלאסטרים במקביל
- מאפשר טעינה של אימגים מקומיים ישירות לתוך הקלאסטר ללא צורך בטעינתם לcontainer registry  חצוני


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

