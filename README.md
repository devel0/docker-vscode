# docker-vscode

desktop development environment ( rdp, dotnet, vscode )

## build image

```
./build.sh
```

## run image

```
docker run -tid --name=mycode searchathing/vscode
```

## set container root password

```
docker exec -ti mycode passwd
```

## install rdp client

```
apt install freerdp2-x11
```

## make rdp connection

```
xfreerdp /v:containerip
```

## start vscode

```
vscode
```
