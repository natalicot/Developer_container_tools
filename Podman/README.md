# Podman
![podman](../images/podman.png)

[Podman GitHub Pages](https://github.com/containers/podman/)

[official website](https://podman.io/)

### About
- פודמן הוא מנוע להרצת קונטיינרים המפותח ע"י רד האט
- פודמן מריץ קונטיינרים ללא הצורך בדימון, כלומר המפתח יכול לגשת ישירות לקונטיינר מה שיוצר סביבה יותר מאובטחת
- פודמן יכול לרוץ גם כיוזר רגיל וגם כרוט יוזר
- פודמן יכול להריץ פודים מה שמקל על המעבר לקוברנטיס
- ניתן לתת אלייס לפודמן שיהיה שווה לדוקר ולהמשיך להשתמש בפקודות הרגילות


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
