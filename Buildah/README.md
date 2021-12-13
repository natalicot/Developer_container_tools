# Buildah
![Buildah](../images/buildah.png)

[Buildah GitHub Pages](https://github.com/containers/buildah)

[official website](https://buildah.io/)

### About

- Buildah is developed by Red Hat. 
- Buildah is daemonless and rootless.
- Buildah  supports complex build scenarios. 
- Buildah comes along with Podman and is called when you run podman build.




### Get started
```sh
# make sure Buildah is installed
buildah --version
```

```sh
# Go into the example app directory
cd Buildah/example_app
```

```sh
# Buildah build the app image using the docker file
buildah bud -t my_demo_app:1.0.1 .
```

```sh
# show the created image
buildah images
```


