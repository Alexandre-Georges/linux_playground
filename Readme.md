# Linux playground

## Build and run the image

```shell
docker build --tag playground . && docker run --detach --name playground -p 127.0.0.1:22:22 playground
```

## Kill and delete the container and remove the image

```shell
docker kill playground; docker rm playground; docker rmi playground
```

## Log in

- Hostname: `localhost`
- Username: `play`
- Password: `pass`

## To remove the old SSH host

```shell
ssh-keygen -R localhost
```
