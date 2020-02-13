# Supported tags and respective `Dockerfile` links

-	[`latest`] Fedora 31 + Apache 2.4 + PHP 7.3
-	[`31`] Fedora 31 + Apache 2.4 + PHP 7.3
-	[`30`] Fedora 30 + Apache 2.4 + PHP 7.3

# Info
Based on official [Fedora] (https://hub.docker.com/_/fedora) images with addition of:

- Apache 2.4
- PHP 7.3
- PDO
- MySQL
- Mbstring
- GD
- Pear

# Run
Run this image:

```console
$ docker run --name fedora-apache-php \
	-d tglab/fedora-apache-php:30
```
