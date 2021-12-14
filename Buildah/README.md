
<style>
  .rtl { direction:rtl;}
</style>
<div class="rtl">

# Buildah
![Buildah](../images/buildah.png)

[Buildah GitHub Pages](https://github.com/containers/buildah)

[official website](https://buildah.io/)

- פותח ע"י רד האט
- מתמחה בכל הקשור לבניית אימגים
- יכול לרוץ עם הרשאות משתמש רגיל (rootless) או עם הרשאות מנהל (root)
- לbuildah יש הרבה יכולות תמרון והרבה כלים לבניית  לכל הצרכים
- podman משתמש ב buildah במהלך פקודת הבניה  
</div>

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


