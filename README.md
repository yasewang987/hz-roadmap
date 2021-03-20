# hz-roadmap

1

## docker运行

```bash
# 构建镜像
docker build -t hello .

# 运行容器
docker run -d -p 19999:80 -v $currentDir/dist:/usr/share/nginx/html --name hello hello
```

## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
