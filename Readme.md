# Linux playground

## Build the image

```shell
docker build --tag playground . && docker run --detach --name playground -p 127.0.0.1:22:22 playground
```

## Start the container

```shell
docker kill playground; docker rm playground; docker rmi playground
```

## Log in

```shell
ssh play@localhost
```

The password is `pass`.

## To remove the old SSH host

```shell
ssh-keygen -R localhost
```