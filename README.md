# Magento Cloud cli for Docker

----

> This Container have UID = `1000`

> Files will be created / edited with UID `1000`

> If you have `$ id -u` different of `1000` please run **build** process

----

How to use:

```
$ docker container run -it --rm --user phpcli -p 5000:5000 00f100/magento-cloud-cli
```

To leave:

```
magento-cloud exit
```

### Build

Clone git repository

```
$ git clone git@github.com:00F100/magento-cloud-cli.git
```

Then enter the directory

```
$ cd magento-cloud-cli
```

Build image localhost

```
$ make install
```

Container download/up

```
$ make container
```