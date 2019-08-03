# docker-vscode

docker-ubuntu + docker-dotnet + docker-rdp + desktop development environment ( vscode )

## build image

```
./build.sh
```

## run image

```
docker run -tid --name=mycode searchathing/vscode
```

## set container devel0 password

```
docker exec -ti mycode passwd devel0
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

![](rdp-code.png)
