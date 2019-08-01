# Magento Cloud cli for Docker

How to use:

```
$ docker container run -it --rm --user phpcli -p 5000:5000 00f100/magento-cloud-cli:0.0.1
```

To leave:

```
magento-cloud exit
```

### Build

Build image localhost

```
$ make install
```

Container download/up

```
$ make container
```