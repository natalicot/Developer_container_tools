# Podman
![podman](../images/podman.png)

[Podman GitHub Pages](https://github.com/containers/podman/)

[official website](https://podman.io/)

### About
- The most prominent competitor to Docker is Podman, developed by Red Hat.
- Podman is daemon-less.
- Podman can be root or rootless. 
- Podman runs pods which make it easier to later migrate the workloads to Kubernetes.
- Podman provides the exact same CLI commands as Docker as they are implemented using the same standard defined by the Open Container Initiatives (OCI).



### Get started
```sh
# make sure podman is installed
podman --version
```

```sh
# podman run my demo container
podman run --name mycontainer -d -p 8081:8080 natalicot/my_awsome_app:1.0.1
```

```sh
# podman run my demo container
podman run --name mycontainer -d -p 8081:8080 natalicot/my_awsome_app:1.0.1
```

```sh
# show the running container
podman ps
```

```sh
# you can now access your container on:
echo loclhost:8081
```

```sh
# generate a pod YAML
podman generate kube mycontainer > mycontainer.yml
```

### Alias
```sh
# you alias podman to docker and work as usual
alias docker=podman
```

```sh
# test the alias
docker ps
```
