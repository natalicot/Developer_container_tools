# Buildah
![Buildah](../images/buildah.png)

[Buildah GitHub Pages](https://github.com/containers/buildah)

[official website](https://buildah.io/)

### About

- בילדה היא כלי הפותח ע"י רד האט
- בילדה מתמחה בכל הקשור לבניית אימגים
- בילדה יכולה לרוץ כיוזר רגיל או כיוזר רוט
- לבילדה יש הרבה יכולות תמרון והרבה כלים לבניית אימזים לכל הצרכים
- בילדה מגיע יחד עם פודמן בפקודת פודמן בילד


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


