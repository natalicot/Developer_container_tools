
# Minikube
![minikube](../images/minikube.png)

[minikube GitHub Pages](https://github.com/kubernetes/minikube)

[official website](https://minikube.sigs.k8s.io/)


- כלי קוד פתוח להרצת קלאסטר של קוברנטיס מקומית
- בגרסת הקוברנטיס הנוכחית וב6 גרסאות אחורה
- רץ על שלושת מערכות ההפעלה העיקריות - וונדווס לינוקס ומאק
- משתמש במכונה וירטואלית, דוקר או בחומרה הפיזית כדי לרוץ
- תומך בהרצת כמה קלאסטרים ביחד
- לא תומך בהרצת כמה nodes על קלאסטר אחד



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

